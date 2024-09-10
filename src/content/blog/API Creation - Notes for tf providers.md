---
title: API Creation - Notes for tf providers
description: General notes for creating CRUDs
pubDate: Feb 08 2024
heroImage: /blog-placeholder-3.jpg
---




```json
{
    "pathsToIgnore": [
        "/adaptive-cards",
        "/answers",
        "/aspnet",
        "/azure",
        "/compliance",
        "/cloud-app-security",
        "/concepts",
        "/defender",
        "/defender-for-identity",
        "/deployedge",
        "/dotnet",
        "/dynamics-nav",
        "/exchange",
        "/entra",
        "/graph",
        "/intune-classic",
        "/legal",
        "/mem",
        "/microsoft-365",
        "/microsoftsearch",
        "/microsoftteams",
        "/office",
        "/office365",
        "/onedrive",
        "/openspecs",
        "/partner-center",
        "/powershell",
        "/previous-versions",
        "/project-for-the-web",
        "/purview",
        "/rest",
        "/schooldatasync",
        "/security",
        "/skypeforbusiness",
        "/sharepoint",
        "/training",
        "/troubleshoot",
        "/viva",
        "/windows",
        "/windows-hardware"
    ]
}
```


```json
{
  "api-requirements":
  {
    "httpRequest": {
      "maxUrlLength": 2083,
      "httpMethods": ["GET", "PUT", "DELETE", "POST", "PATCH", "OPTIONS"],
      "standardHeaders": [
        "Authorization",
        "Date",
        "Accept",
        "Accept-Encoding",
        "Accept-Language",
        "Accept-Charset",
        "Content-Type",
        "Prefer",
        "If-Match",
        "If-None-Match",
        "If-Range",
        "Content-Length",
        "Content-Range",
        "Range"
      ],
      "contentTypes": ["application/json", "multipart/related", "text/plain", "text/csv", "image/jpeg"]
    },
    "httpResponse": {
      "contentTypes": [ "application/json", "multipart/related", "text/plain", "text/csv", "image/jpeg", "application/octet-stream" ],
      "standardHeaders":
      [
        "Content-Range"
      ]
    },
    "jsonSerialization": {
      "collectionPropertyNames": ["value"],
      "dateTimeFormats": ["yyyy-MM-ddThh:MM:SSz", "yyyy-MM-dd"]
    },
    "ignorableProperties": [
      "@odata.id",
      "@odata.context",
      "@odata.etag",
      "@odata.type",
      "@odata.nextLink",
      "@odata.deltaLink"
    ],
    "caseSensitiveHeaders": false
  }
}
```






```jsonc
//HTTP/1.1 200 OK
//Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.auditLogRecord",
      "id": "40706737-7eca-f9a1-97a5-dedd3260e24a",
      "createdDateTime": "String (timestamp)",
      "auditLogRecordType": "String",
      "operation": "String",
      "organizationId": "String",
      "userType": "String",
      "userId": "String",
      "service": "String",
      "objectId": "String",
      "userPrincipalName": "String",
      "clientIp": "String",
      "administrativeUnits": [
        "String"
      ],
      "auditData": {
        "@odata.type": "microsoft.graph.security.auditData"
      }
    }
  ]
}
```