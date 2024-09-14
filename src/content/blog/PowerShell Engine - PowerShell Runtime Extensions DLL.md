---
title: PowerShell Execution Engine - PowerShell Runtime Extensions DLL.
description: Creation of a submodule for the PowerShell Execution Engine. This submodule is actually going to be a runtime extension used within the PowerShell environment itself. It will include novel methods of parsing the JSON format of the stored PowerShell script & will also include a class that will wrap the custom HTTP communication with the backend infrastructure as it will be customized.
pubDate: Sept 09 2024
heroImage: /blog-invoke-ps.jpg
tags: ['Orchestration', 'C#', 'IaC', 'JSON', 'HTTP']
categories: ['Automation']
---

PowerShell Runtime Extensions are extensions used from the runspace powershell environment on the powershell execution engine. These are loaded each time, when powershell is instantiated - and the DLL loaded is int the execution engine's installation directory.

This blog entry will contain the methods inside the `PowerShellRuntimeExtensions.dll` along with the build instructions.

It includes custom JSON parsing classes and custom HTTP wrapper for future communication with the backend and an example of a loader script that will be implemented in the powershell executor class.

`PowerShellRuntimeExtensions::ConvertToJsonContext`

Brief overview of ConvertToJsonContext here.

```cs
	using Newtonsoft.Json;

	public readonly struct ConvertToJsonContext
	{
		public readonly int MaxDepth;

		public readonly StringEscapeHandling StringEscapeHandling;

		public readonly bool EnumsAsStrings;

		public readonly bool CompressOutput;

		public ConvertToJsonContext(int maxDepth, bool enumsAsStrings, bool compressOutput)
			: this(maxDepth, enumsAsStrings, compressOutput, StringEscapeHandling.Default)
		{
		}

		public ConvertToJsonContext(int maxDepth, bool enumsAsStrings, bool compressOutput, StringEscapeHandling stringEscapeHandling)
		{
			this.MaxDepth = maxDepth;
			this.StringEscapeHandling = stringEscapeHandling;
			this.EnumsAsStrings = enumsAsStrings;
			this.CompressOutput = compressOutput;
		}
	}
```

`PowerShellRuntimeExtensions::JsonObject`

Brief overview of JsonObject here.

```cs
		using System;
		using System.Collections;
		using System.Collections.Generic;
		using System.Globalization;
		using System.Management.Automation;
		using System.Management.Automation.Internal;
		using System.Reflection;
		using System.Text.RegularExpressions;
		using Newtonsoft.Json;
		using Newtonsoft.Json.Converters;
		using Newtonsoft.Json.Linq;
		using PowerShellRuntimeExtensions;

		public static class JsonObject
		{
			private sealed class DuplicateMemberHashSet : Dictionary<string, string>
			{
				public DuplicateMemberHashSet(int capacity)
					: base(capacity, (IEqualityComparer<string>)StringComparer.OrdinalIgnoreCase)
				{
				}
			}

			private static bool _maxDepthWarningWritten;

			public static object ConvertFromJson(string input, out ErrorRecord error)
			{
				return JsonObject.ConvertFromJson(input, returnHashtable: false, out error);
			}

			public static object ConvertFromJson(string input, bool returnHashtable, out ErrorRecord error)
			{
				return JsonObject.ConvertFromJson(input, returnHashtable, 1024, out error);
			}

			public static object ConvertFromJson(string input, bool returnHashtable, int? maxDepth, out ErrorRecord error)
			{
				if (input == null)
				{
					throw new ArgumentNullException("input");
				}
				error = null;
				try
				{
					if (Regex.Match(input, "^\\s*\\[").Success)
					{
						JArray.Parse(input);
					}
					object obj;
					obj = JsonConvert.DeserializeObject(input, new JsonSerializerSettings
					{
						TypeNameHandling = TypeNameHandling.None,
						MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
						MaxDepth = maxDepth
					});
					if (!(obj is JObject jObject))
					{
						if (obj is JArray list)
						{
							return returnHashtable ? JsonObject.PopulateHashTableFromJArray(list, out error) : JsonObject.PopulateFromJArray(list, out error);
						}
						return obj;
					}
					if (returnHashtable)
					{
						return JsonObject.PopulateHashTableFromJDictionary(jObject, out error);
					}
					return JsonObject.PopulateFromJDictionary(jObject, new DuplicateMemberHashSet(jObject.Count), out error);
				}
				catch (JsonException ex)
				{
					throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "Json Deserialisation Failed", ex.Message), ex);
				}
			}

			private static PSObject PopulateFromJDictionary(JObject entries, DuplicateMemberHashSet memberHashTracker, out ErrorRecord error)
			{
				error = null;
				PSObject pSObject;
				pSObject = new PSObject(entries.Count);
				foreach (KeyValuePair<string, JToken> entry in entries)
				{
					if (string.IsNullOrEmpty(entry.Key))
					{
						error = new ErrorRecord(new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "Empty key in JSON string")), "EmptyKeyInJsonString", ErrorCategory.InvalidOperation, null);
						return null;
					}
					if (memberHashTracker.TryGetValue(entry.Key, out var value) && string.Equals(entry.Key, value, StringComparison.Ordinal))
					{
						error = new ErrorRecord(new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "Duplicate keys in Json string", entry.Key)), "DuplicateKeysInJsonString", ErrorCategory.InvalidOperation, null);
						return null;
					}
					if (memberHashTracker.TryGetValue(entry.Key, out var value2))
					{
						error = new ErrorRecord(new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "KeysWithDifferentCasingInJsonString", value2, entry.Key)), "KeysWithDifferentCasingInJsonString", ErrorCategory.InvalidOperation, null);
						return null;
					}
					JToken value3;
					value3 = entry.Value;
					if (!(value3 is JArray list))
					{
						if (!(value3 is JObject jObject))
						{
							if (value3 is JValue jValue)
							{
								pSObject.Properties.Add(new PSNoteProperty(entry.Key, jValue.Value));
							}
						}
						else
						{
							PSObject value4;
							value4 = JsonObject.PopulateFromJDictionary(jObject, new DuplicateMemberHashSet(jObject.Count), out error);
							if (error != null)
							{
								return null;
							}
							pSObject.Properties.Add(new PSNoteProperty(entry.Key, value4));
						}
					}
					else
					{
						ICollection<object> value5;
						value5 = JsonObject.PopulateFromJArray(list, out error);
						if (error != null)
						{
							return null;
						}
						pSObject.Properties.Add(new PSNoteProperty(entry.Key, value5));
					}
					memberHashTracker.Add(entry.Key, entry.Key);
				}
				return pSObject;
			}

			private static ICollection<object> PopulateFromJArray(JArray list, out ErrorRecord error)
			{
				error = null;
				object[] array;
				array = new object[list.Count];
				for (int i = 0; i < list.Count; i++)
				{
					JToken jToken;
					jToken = list[i];
					if (!(jToken is JArray list2))
					{
						if (!(jToken is JObject jObject))
						{
							if (jToken is JValue jValue)
							{
								array[i] = jValue.Value;
							}
							continue;
						}
						PSObject pSObject;
						pSObject = JsonObject.PopulateFromJDictionary(jObject, new DuplicateMemberHashSet(jObject.Count), out error);
						if (error != null)
						{
							return null;
						}
						array[i] = pSObject;
					}
					else
					{
						ICollection<object> collection;
						collection = JsonObject.PopulateFromJArray(list2, out error);
						if (error != null)
						{
							return null;
						}
						array[i] = collection;
					}
				}
				return array;
			}

			private static Hashtable PopulateHashTableFromJDictionary(JObject entries, out ErrorRecord error)
			{
				error = null;
				Hashtable hashtable;
				hashtable = new Hashtable(entries.Count);
				foreach (KeyValuePair<string, JToken> entry in entries)
				{
					if (hashtable.ContainsKey(entry.Key))
					{
						error = new ErrorRecord(new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "DuplicateKeysInJsonString", entry.Key)), "DuplicateKeysInJsonString", ErrorCategory.InvalidOperation, null);
						return null;
					}
					JToken value;
					value = entry.Value;
					if (!(value is JArray list))
					{
						if (!(value is JObject entries2))
						{
							if (value is JValue jValue)
							{
								hashtable.Add(entry.Key, jValue.Value);
							}
							continue;
						}
						Hashtable value2;
						value2 = JsonObject.PopulateHashTableFromJDictionary(entries2, out error);
						if (error != null)
						{
							return null;
						}
						hashtable.Add(entry.Key, value2);
					}
					else
					{
						ICollection<object> value3;
						value3 = JsonObject.PopulateHashTableFromJArray(list, out error);
						if (error != null)
						{
							return null;
						}
						hashtable.Add(entry.Key, value3);
					}
				}
				return hashtable;
			}

			private static ICollection<object> PopulateHashTableFromJArray(JArray list, out ErrorRecord error)
			{
				error = null;
				object[] array;
				array = new object[list.Count];
				for (int i = 0; i < list.Count; i++)
				{
					JToken jToken;
					jToken = list[i];
					if (!(jToken is JArray list2))
					{
						if (!(jToken is JObject entries))
						{
							if (jToken is JValue jValue)
							{
								array[i] = jValue.Value;
							}
							continue;
						}
						Hashtable hashtable;
						hashtable = JsonObject.PopulateHashTableFromJDictionary(entries, out error);
						if (error != null)
						{
							return null;
						}
						array[i] = hashtable;
					}
					else
					{
						ICollection<object> collection;
						collection = JsonObject.PopulateHashTableFromJArray(list2, out error);
						if (error != null)
						{
							return null;
						}
						array[i] = collection;
					}
				}
				return array;
			}

			public static string ConvertToJson(object objectToProcess, in ConvertToJsonContext context)
			{
				try
				{
					JsonObject._maxDepthWarningWritten = false;
					object value;
					value = JsonObject.ProcessValue(objectToProcess, 0, in context);
					JsonSerializerSettings jsonSerializerSettings;
					jsonSerializerSettings = new JsonSerializerSettings
					{
						TypeNameHandling = TypeNameHandling.None,
						MaxDepth = 1024,
						StringEscapeHandling = context.StringEscapeHandling
					};
					if (context.EnumsAsStrings)
					{
						jsonSerializerSettings.Converters.Add(new StringEnumConverter());
					}
					if (!context.CompressOutput)
					{
						jsonSerializerSettings.Formatting = Formatting.Indented;
					}
					return JsonConvert.SerializeObject(value, jsonSerializerSettings);
				}
				catch (OperationCanceledException)
				{
					return null;
				}
			}

			private static object ProcessValue(object obj, int currentDepth, in ConvertToJsonContext context)
			{
				if (obj == null || obj == AutomationNull.Value)
				{
					return null;
				}
				PSObject pSObject;
				pSObject = obj as PSObject;
				if (pSObject != null)
				{
					obj = pSObject.BaseObject;
				}
				object obj2;
				obj2 = obj;
				bool isPurePSObj;
				isPurePSObj = false;
				bool isCustomObj;
				isCustomObj = false;
				if (obj == null || obj == DBNull.Value)
				{
					obj2 = null;
				}
				else if (obj is string || obj is char || obj is bool || obj is DateTime || obj is DateTimeOffset || obj is Guid || obj is Uri || obj is double || obj is float || obj is decimal)
				{
					obj2 = obj;
				}
				else if (obj is JObject jObject)
				{
					obj2 = jObject.ToObject<Dictionary<object, object>>();
				}
				else
				{
					Type type;
					type = obj.GetType();
					if (type.IsPrimitive)
					{
						obj2 = obj;
					}
					else if (type.IsEnum)
					{
						Type underlyingType;
						underlyingType = Enum.GetUnderlyingType(obj.GetType());
						obj2 = ((!underlyingType.Equals(typeof(long)) && !underlyingType.Equals(typeof(ulong))) ? obj : obj.ToString());
					}
					else if (currentDepth > context.MaxDepth)
					{
						if (pSObject != null && pSObject.BaseObject is PSCustomObject)
						{
							obj2 = LanguagePrimitives.ConvertTo(pSObject, typeof(string), CultureInfo.InvariantCulture);
							isPurePSObj = true;
						}
						else
						{
							obj2 = LanguagePrimitives.ConvertTo(obj, typeof(string), CultureInfo.InvariantCulture);
						}
					}
					else if (obj is IDictionary dict)
					{
						obj2 = JsonObject.ProcessDictionary(dict, currentDepth, in context);
					}
					else if (obj is IEnumerable enumerable)
					{
						obj2 = JsonObject.ProcessEnumerable(enumerable, currentDepth, in context);
					}
					else
					{
						obj2 = JsonObject.ProcessCustomObject<JsonIgnoreAttribute>(obj, currentDepth, in context);
						isCustomObj = true;
					}
				}
				return JsonObject.AddPsProperties(pSObject, obj2, currentDepth, isPurePSObj, isCustomObj, in context);
			}

			private static object AddPsProperties(object psObj, object obj, int depth, bool isPurePSObj, bool isCustomObj, in ConvertToJsonContext context)
			{
				if (!(psObj is PSObject psObj2))
				{
					return obj;
				}
				if (isPurePSObj)
				{
					return obj;
				}
				bool flag;
				flag = true;
				IDictionary dictionary;
				dictionary = obj as IDictionary;
				if (dictionary == null)
				{
					flag = false;
					dictionary = new Dictionary<string, object>();
					dictionary.Add("value", obj);
				}
				JsonObject.AppendPsProperties(psObj2, dictionary, depth, isCustomObj, in context);
				if (!flag && dictionary.Count == 1)
				{
					return obj;
				}
				return dictionary;
			}

			private static void AppendPsProperties(PSObject psObj, IDictionary receiver, int depth, bool isCustomObject, in ConvertToJsonContext context)
			{
				if (psObj.BaseObject is string || psObj.BaseObject is DateTime)
				{
					return;
				}
				foreach (PSPropertyInfo property in psObj.Properties)
				{
					object obj;
					obj = null;
					try
					{
						obj = property.Value;
					}
					catch (Exception)
					{
					}
					if (!receiver.Contains(property.Name))
					{
						receiver[property.Name] = JsonObject.ProcessValue(obj, depth + 1, in context);
					}
				}
			}

			private static object ProcessDictionary(IDictionary dict, int depth, in ConvertToJsonContext context)
			{
				Dictionary<string, object> dictionary;
				dictionary = new Dictionary<string, object>(dict.Count);
				foreach (DictionaryEntry item in dict)
				{
					if (!(item.Key is string key))
					{
						throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "NonStringKeyInDictionary", dict.GetType().FullName));
					}
					dictionary.Add(key, JsonObject.ProcessValue(item.Value, depth + 1, in context));
				}
				return dictionary;
			}

			private static object ProcessEnumerable(IEnumerable enumerable, int depth, in ConvertToJsonContext context)
			{
				List<object> list;
				list = new List<object>();
				foreach (object item in enumerable)
				{
					list.Add(JsonObject.ProcessValue(item, depth + 1, in context));
				}
				return list;
			}

			private static object ProcessCustomObject<T>(object o, int depth, in ConvertToJsonContext context)
			{
				Dictionary<string, object> dictionary;
				dictionary = new Dictionary<string, object>();
				Type type;
				type = o.GetType();
				FieldInfo[] fields;
				fields = type.GetFields(BindingFlags.Instance | BindingFlags.Public);
				foreach (FieldInfo fieldInfo in fields)
				{
					if (!fieldInfo.IsDefined(typeof(T), inherit: true))
					{
						object obj;
						try
						{
							obj = fieldInfo.GetValue(o);
						}
						catch (Exception)
						{
							obj = null;
						}
						dictionary.Add(fieldInfo.Name, JsonObject.ProcessValue(obj, depth + 1, in context));
					}
				}
				PropertyInfo[] properties;
				properties = type.GetProperties(BindingFlags.Instance | BindingFlags.Public);
				foreach (PropertyInfo propertyInfo in properties)
				{
					if (propertyInfo.IsDefined(typeof(T), inherit: true))
					{
						continue;
					}
					MethodInfo getMethod;
					getMethod = propertyInfo.GetGetMethod();
					if (getMethod != null && getMethod.GetParameters().Length == 0)
					{
						object obj2;
						try
						{
							obj2 = getMethod.Invoke(o, new object[0]);
						}
						catch (Exception)
						{
							obj2 = null;
						}
						dictionary.Add(propertyInfo.Name, JsonObject.ProcessValue(obj2, depth + 1, in context));
					}
				}
				return dictionary;
			}
		}
```

`PowerShellRuntimeExtensions::WrappedHttpWebRequest`

Brief overview of WrappedHttpWebRequest.

```cs
using System;
using System.IO;
using System.Net;
using System.Net.Cache;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Security.Principal;
using PowerShellRuntimeExtensions;

public class WrappedHttpWebRequest
{
    private HttpWebRequest request;

    public static IWebProxy DefaultWebProxy => WebRequest.DefaultWebProxy;

    public RequestCachePolicy CachePolicy => this.request.CachePolicy;

    public TokenImpersonationLevel ImpersonationLevel => this.request.ImpersonationLevel;

    public AuthenticationLevel AuthenticationLevel => this.request.AuthenticationLevel;

    public static int DefaultMaximumErrorResponseLength
    {
        get
        {
            return HttpWebRequest.DefaultMaximumErrorResponseLength;
        }
        set
        {
            HttpWebRequest.DefaultMaximumErrorResponseLength = value;
        }
    }

    public static int DefaultMaximumResponseHeadersLength
    {
        get
        {
            return HttpWebRequest.DefaultMaximumResponseHeadersLength;
        }
        set
        {
            HttpWebRequest.DefaultMaximumResponseHeadersLength = value;
        }
    }

    public static RequestCachePolicy DefaultCachePolicy
    {
        get
        {
            return HttpWebRequest.DefaultCachePolicy;
        }
        set
        {
            HttpWebRequest.DefaultCachePolicy = value;
        }
    }

    public ServicePoint ServicePoint => this.request.ServicePoint;

    public HttpContinueDelegate ContinueDelegate
    {
        get
        {
            return this.request.ContinueDelegate;
        }
        set
        {
            this.request.ContinueDelegate = value;
        }
    }

    public Uri Address => this.request.Address;

    public int ReadWriteTimeout
    {
        get
        {
            return this.request.ReadWriteTimeout;
        }
        set
        {
            this.request.ReadWriteTimeout = value;
        }
    }

    public int Timeout
    {
        get
        {
            return this.request.Timeout;
        }
        set
        {
            this.request.Timeout = value;
        }
    }

    public long ContentLength
    {
        get
        {
            return this.request.ContentLength;
        }
        set
        {
            this.request.ContentLength = value;
        }
    }

    public Uri RequestUri => this.request.RequestUri;

    public int MaximumAutomaticRedirections
    {
        get
        {
            return this.request.MaximumAutomaticRedirections;
        }
        set
        {
            this.request.MaximumAutomaticRedirections = value;
        }
    }

    public string Method
    {
        get
        {
            return this.request.Method;
        }
        set
        {
            this.request.Method = value;
        }
    }

    public bool UseDefaultCredentials
    {
        get
        {
            return this.request.UseDefaultCredentials;
        }
        set
        {
            this.request.UseDefaultCredentials = value;
        }
    }

    public virtual CookieContainer CookieContainer
    {
        get
        {
            return this.request.CookieContainer;
        }
        set
        {
            this.request.CookieContainer = value;
        }
    }

    public string ConnectionGroupName
    {
        get
        {
            return this.request.ConnectionGroupName;
        }
        set
        {
            this.request.ConnectionGroupName = value;
        }
    }

    public WebHeaderCollection Headers
    {
        get
        {
            return this.request.Headers;
        }
        set
        {
            this.request.Headers = value;
        }
    }

    public IWebProxy Proxy
    {
        get
        {
            return this.request.Proxy;
        }
        set
        {
            this.request.Proxy = value;
        }
    }

    public Version ProtocolVersion
    {
        get
        {
            return this.request.ProtocolVersion;
        }
        set
        {
            this.request.ProtocolVersion = value;
        }
    }

    public string ContentType
    {
        get
        {
            return this.request.ContentType;
        }
        set
        {
            this.request.ContentType = value;
        }
    }

    public string MediaType
    {
        get
        {
            return this.request.MediaType;
        }
        set
        {
            this.request.MediaType = value;
        }
    }

    public string TransferEncoding
    {
        get
        {
            return this.request.TransferEncoding;
        }
        set
        {
            this.request.TransferEncoding = value;
        }
    }

    public string Connection
    {
        get
        {
            return this.request.Connection;
        }
        set
        {
            this.request.Connection = value;
        }
    }

    public string Accept
    {
        get
        {
            return this.request.Accept;
        }
        set
        {
            this.request.Accept = value;
        }
    }

    public string Referer
    {
        get
        {
            return this.request.Referer;
        }
        set
        {
            this.request.Referer = value;
        }
    }

    public string UserAgent
    {
        get
        {
            return this.request.UserAgent;
        }
        set
        {
            this.request.UserAgent = value;
        }
    }

    public string Expect
    {
        get
        {
            return this.request.Expect;
        }
        set
        {
            this.request.Expect = value;
        }
    }

    public DateTime IfModifiedSince
    {
        get
        {
            return this.request.IfModifiedSince;
        }
        set
        {
            this.request.IfModifiedSince = value;
        }
    }

    public ICredentials Credentials
    {
        get
        {
            return this.request.Credentials;
        }
        set
        {
            this.request.Credentials = value;
        }
    }

    public X509CertificateCollection ClientCertificates
    {
        get
        {
            return this.request.ClientCertificates;
        }
        set
        {
            this.request.ClientCertificates = value;
        }
    }

    public DecompressionMethods AutomaticDecompression
    {
        get
        {
            return this.request.AutomaticDecompression;
        }
        set
        {
            this.request.AutomaticDecompression = value;
        }
    }

    public bool SendChunked
    {
        get
        {
            return this.request.SendChunked;
        }
        set
        {
            this.request.SendChunked = value;
        }
    }

    public bool UnsafeAuthenticatedConnectionSharing
    {
        get
        {
            return this.request.UnsafeAuthenticatedConnectionSharing;
        }
        set
        {
            this.request.UnsafeAuthenticatedConnectionSharing = value;
        }
    }

    public bool PreAuthenticate
    {
        get
        {
            return this.request.PreAuthenticate;
        }
        set
        {
            this.request.PreAuthenticate = value;
        }
    }

    public bool Pipelined
    {
        get
        {
            return this.request.Pipelined;
        }
        set
        {
            this.request.Pipelined = value;
        }
    }

    public bool KeepAlive
    {
        get
        {
            return this.request.KeepAlive;
        }
        set
        {
            this.request.KeepAlive = value;
        }
    }

    public bool HaveResponse => this.request.HaveResponse;

    public bool AllowWriteStreamBuffering
    {
        get
        {
            return this.request.AllowWriteStreamBuffering;
        }
        set
        {
            this.request.AllowWriteStreamBuffering = value;
        }
    }

    public bool AllowAutoRedirect
    {
        get
        {
            return this.request.AllowAutoRedirect;
        }
        set
        {
            this.request.AllowAutoRedirect = value;
        }
    }

    public int MaximumResponseHeadersLength
    {
        get
        {
            return this.request.MaximumResponseHeadersLength;
        }
        set
        {
            this.request.MaximumResponseHeadersLength = value;
        }
    }

    public void Abort()
    {
        this.request.Abort();
    }

    public void AddRange(int from, int to)
    {
        this.request.AddRange(from, to);
    }

    public void AddRange(int range)
    {
        this.request.AddRange(range);
    }

    public void AddRange(string rangeSpecifier, int from, int to)
    {
        this.request.AddRange(rangeSpecifier, from, to);
    }

    public void AddRange(string rangeSpecifier, int range)
    {
        this.request.AddRange(rangeSpecifier, range);
    }

    public IAsyncResult BeginGetRequestStream(AsyncCallback callback, object state)
    {
        return this.request.BeginGetRequestStream(callback, state);
    }

    public IAsyncResult BeginGetResponse(AsyncCallback callback, object state)
    {
        return this.request.BeginGetResponse(callback, state);
    }

    public Stream EndGetRequestStream(IAsyncResult asyncResult, out TransportContext context)
    {
        return this.request.EndGetRequestStream(asyncResult, out context);
    }

    public Stream EndGetRequestStream(IAsyncResult asyncResult)
    {
        return this.request.EndGetRequestStream(asyncResult);
    }

    public WebResponse EndGetResponse(IAsyncResult asyncResult)
    {
        return this.request.EndGetResponse(asyncResult);
    }

    public Stream GetRequestStream(out TransportContext context)
    {
        return this.request.GetRequestStream(out context);
    }

    public Stream GetRequestStream()
    {
        return this.request.GetRequestStream();
    }

    public WebResponse GetResponse()
    {
        try
        {
            return this.request.GetResponse();
        }
        catch (WebException ex)
        {
            string text;
            text = "Web Exception Summary: " + ex.Message;
            try
            {
                using Stream stream = ex.Response.GetResponseStream();
                using StreamReader streamReader = new StreamReader(stream);
                text = text + ", Web Exception Details: " + streamReader.ReadToEnd();
            }
            catch (Exception)
            {
            }
            throw new Exception(text, ex);
        }
    }

    public static WrappedHttpWebRequest Create(Uri requestUri)
    {
        return new WrappedHttpWebRequest
        {
            request = (HttpWebRequest)WebRequest.Create(requestUri)
        };
    }

    public static WrappedHttpWebRequest Create(string requestUriString)
    {
        return new WrappedHttpWebRequest
        {
            request = (HttpWebRequest)WebRequest.Create(requestUriString)
        };
    }

    public static WrappedHttpWebRequest CreateDefault(Uri requestUri)
    {
        return new WrappedHttpWebRequest
        {
            request = (HttpWebRequest)WebRequest.CreateDefault(requestUri)
        };
    }

    public static IWebProxy GetSystemWebProxy()
    {
        return WebRequest.GetSystemWebProxy();
    }

    public static bool RegisterPrefix(string prefix, IWebRequestCreate creator)
    {
        return WebRequest.RegisterPrefix(prefix, creator);
    }
}
```

## Build instructions

These instructions assume you have followed basics in the above for tutorial. Those are having the following source code files.

`ConvertToJsonContext.cs`
`JsonObject.cs`
`WrappedHttpWebRequest.cs`

All of the above classes need to be included in the `PowerShellRuntimeExtensions` namespace.

`csc.exe -recurse:/PowerShellRuntimeExtensions -target:library -o -output:PowerShellRuntimeExtensions.dll`

return [PowerShellRuntimeExtensions.JsonObject]::ConvertFromJson($inputObject, $false, 4, [ref]$err);

------------------------------------------------------

I'm not sure how to approach inserting this into the default session state within the excutor, but as a preview/draft

```powershell
#PowerShellRuntimeExtensions.dll
add-type -path PowerShellRuntimeExtensions20.dll

function ConvertFrom-Json20([object] $inputObject) {
    $err = $null;
    return [PowerShellRuntimeExtensions.JsonObject]::ConvertFromJson($inputObject, $false, 4, [ref]$err);
}
function ConvertTo-Json20([object] $inputObject, $depth = 5) {
    $ctx = New-Object PowerShellRuntimeExtensions.ConvertToJsonContext $depth, $false, $false, "Default";
    return [PowerShellRuntimeExtensions.JsonObject]::ConvertToJson($inputObject, [ref]$ctx);
}
if ((Get-Command "ConvertTo-Json" -errorAction SilentlyContinue) -eq $null) { New-Alias -Name "ConvertTo-JSON" -Value "ConvertTo-Json20"};
if ((Get-Command "ConvertFrom-Json" -errorAction SilentlyContinue) -eq $null) { New-Alias -Name "ConvertFrom-JSON" -Value "ConvertFrom-JSON"};
```