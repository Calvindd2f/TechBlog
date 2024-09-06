---
title: Creating a log utility in C++ compiled using Zig (Then ported to C# via CLR)
description: Porting over my infamous LogUtil which I used in C#.
pubDate: Jul 2 2024
heroImage: /blog-placeholder-3.jpg
tags: ['Zig', 'C#', 'C++', 'Drop-in compiler', 'logs', 'logutil', 'log performance','PowerShell']
categories: ['Logging']
---

So I've had this log utility in C# that works fine , but I wanted to see if I could mimic it in C++, but better.
My C++ skills are quite poor. C, I can debug and follow the errors to a decent extent but it just isn't my first choice. I will not disregard the sheer performance of these languages and their usefulness.

Zig is the business.

---

Let's start off by creating `LogUtil.cpp` and `LogUtil.h` , these are just standard C++ header/source files but we will be using Zigs drop-in C++ compiler.

It's going to follow a predefined structure as I have already a C# equivilant in a workflow orchestrator project.

Just as a note I will be using Zig from WSL despite having the binaries on Windows. Zig on WSL just works so much better and their are a significant amount more features.

**LogUtil.h**

```h
#ifndef LOGUTIL_H
#define LOGUTIL_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdbool.h>

// declarations
bool LogInfo(const char* shortMessage, bool detailedDescription);
bool LogError(const char* shortMessage, bool detailedDescription);
bool LogWarning(const char* shortMessage, bool detailedDescription);
bool LogVerbose(const char* shortMessage, bool detailedDescription);
bool LogDebug(const char* shortMessage, bool detailedDescription);

#ifdef __cplusplus
}
#endif

#endif // LOGUTIL_H
```

**LogUtil.cpp**

```cpp
#include "LogUtil.h"
#include <iostream>
#include <fstream>
#include <string>
#include <ctime>
#include <vector>
#include <filesystem>

namespace fs = std::filesystem;

std::vector<std::string> logLines;

std::string GetTimestamp() {
    std::time_t t = std::time(nullptr);
    std::tm tm = *std::localtime(&t);
    char buffer[100];
    std::strftime(buffer, sizeof(buffer), "%a %b %d %H:%M:%S %Y:", &tm);
    return buffer;
}

std::string GetInstallationDirectory() {
    std::string folderPath = "C:\\Program Files";
    std::string text = folderPath + "\\InstallationDirectory";
    return text;
}

void Log(const char* type, const char* shortDescription, bool detailedDescription) {
    std::string timestamp = GetTimestamp();
    std::string message = timestamp + "\t" + type + "\t";

    if (std::string(type) == "Error") {
        message += "\t";
    }

    std::string logMessage = message + shortDescription;
    if (detailedDescription) {
        logMessage += " For more information please see log file";
    }
    std::cout << logMessage << std::endl;

    if (detailedDescription) {
        logMessage = message + shortDescription + "\r\n";
        logMessage += "Details:\r\n";
    }
    logLines.push_back(logMessage);

    std::string agentInstallationDirectory = GetAgentInstallationDirectory();
    try {
        if (fs::exists(agentInstallationDirectory)) {
            std::ofstream logFile(agentInstallationDirectory + "\\LogFile_Installer.txt", std::ios::app);
            for (const auto& line : logLines) {
                logFile << line;
            }
            logLines.clear();
        }
    } catch (const fs::filesystem_error&) {
        // TODO
    }
}

extern "C" bool LogInfo(const char* shortMessage, bool detailedDescription) {
    Log("Informational", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogError(const char* shortMessage, bool detailedDescription) {
    Log("Error", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogWarning(const char* shortMessage, bool detailedDescription) {
    Log("Warning", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogVerbose(const char* shortMessage, bool detailedDescription) {
    Log("Verbose", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogDebug(const char* shortMessage, bool detailedDescription) {
    Log("Debug", shortMessage, detailedDescription);
    return true;
}
```

After this, I created the zig build file and ran into the first struggle.

**Build.zig**

```zig
const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();

    const exe = b.addSharedLibrary("logutil", "LogUtil.cpp", .{
        .target = b.standardTargetOptions(.{}),
        .name = "logutil",
        .version = .{
            .major = 0,
            .minor = 0,
            .patch = 1,
        },
    });

    exe.setBuildMode(mode);
    exe.linkLibC();
    exe.linkSystemLibrary("c++");

    const hdr_dest = b.addSystemCommand(&[_][]const u8{
        "cp", "LogUtil.h", b.output_dir(),
    });
    hdr_dest.step.dependOn(&exe.step);

    const install_step = b.step("install", "Install the library and header file");
    install_step.dependOn(&exe.step);
    install_step.dependOn(&hdr_dest.step);
}
```

I think I created the source files by doing `zig init-exe` in windows. The first build error that I encountered simply required me to convert the files to a Unix appropriate format.

I removed the carriage returns using `sed` :

```bash
sed -i 's/\r$//' LogUtil.cpp
sed -i 's/\r$//' LogUtil.h
```

I encountered another build issue after running `zig build`, I forgot about the DllMain entry point in the initial C++ source.

I added `DllMain` to the `LogUtil.cpp`

```cpp
#include "LogUtil.h"
#include <windows.h>
#include <iostream>
#include <fstream>
#include <string>
#include <ctime>
#include <vector>
#include <filesystem>

namespace fs = std::filesystem;

std::vector<std::string> logLines;

std::string GetTimestamp() {
    std::time_t t = std::time(nullptr);
    std::tm tm = *std::localtime(&t);
    char buffer[100];
    std::strftime(buffer, sizeof(buffer), "%a %b %d %H:%M:%S %Y:", &tm);
    return buffer;
}

std::string GetAgentInstallationDirectory() {
    std::string folderPath = "C:\\Program Files";
    std::string text = folderPath + "\\Dir";
    return text;
}

void Log(const char* type, const char* shortDescription, bool detailedDescription) {
    std::string timestamp = GetTimestamp();
    std::string message = timestamp + "\t" + type + "\t";

    if (std::string(type) == "Error") {
        message += "\t";
    }

    std::string logMessage = message + shortDescription;
    if (detailedDescription) {
        logMessage += " For more information please see log file";
    }
    std::cout << logMessage << std::endl;

    if (detailedDescription) {
        logMessage = message + shortDescription + "\r\n";
        logMessage += "Details:\r\n";
    }
    logLines.push_back(logMessage);

    std::string agentInstallationDirectory = GetAgentInstallationDirectory();
    try {
        if (fs::exists(agentInstallationDirectory)) {
            std::ofstream logFile(agentInstallationDirectory + "\\LogFile_Installer.txt", std::ios::app);
            for (const auto& line : logLines) {
                logFile << line;
            }
            logLines.clear();
        }
    } catch (const fs::filesystem_error&) {
        // Handle errors if necessary
    }
}

extern "C" bool LogInfo(const char* shortMessage, bool detailedDescription) {
    Log("Informational", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogError(const char* shortMessage, bool detailedDescription) {
    Log("Error", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogWarning(const char* shortMessage, bool detailedDescription) {
    Log("Warning", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogVerbose(const char* shortMessage, bool detailedDescription) {
    Log("Verbose", shortMessage, detailedDescription);
    return true;
}

extern "C" bool LogDebug(const char* shortMessage, bool detailedDescription) {
    Log("Debug", shortMessage, detailedDescription);
    return true;
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved) {
    switch (ul_reason_for_call) {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}
```

After this change, instead of running zig build, I attempted to compile the DLL via a zig build command.

`zig c++ -shared -o LogUtil.dll LogUtil.cpp -lstdc++ -lmingw32 -lkernel32 -luser32`

Perfect, it compiled.

---

#### Now for pulling it into C#

For me to call the functions from C#, surprise surprise - `DllImport` attribute needs to be used to import them from compiled file. `LogUtil.dll` needs to be in the same directory or at bare minimum it's path needs to be specified.

```csharp
using System;
using System.Runtime.InteropServices;
using System.Security;
using System.Runtime.CompilerServices;

internal static class LogUtil
{
    private const string DllName = "LogUtil.dll";

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    internal static extern bool LogInfo(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    internal static extern bool LogError(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    internal static extern bool LogWarning(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    internal static extern bool LogVerbose(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    internal static extern bool LogDebug(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);
}
//.....
```

`DllImport` specifies the DLL and calling convention used by native functions, these conventions just ensure a match between the one used in the DLL. They are also decalred as `extern` methods and return types / param types specified using the `MarshalAs` so their are no tears when marshalling between managed and unmanaged code.

I will create a class for this test case which just acts as a hello world but from the LogUtilities.

```csharp
//......
class Program
{
    static void Main()
    {
        LogUtil.LogInfo("Test Info", false);
        LogUtil.LogError("Test Error", true);
        LogUtil.LogWarning("Test Warning", false);
        LogUtil.LogVerbose("Test Verbose", true);
        LogUtil.LogDebug("Test Debug", false);

        Console.WriteLine("Logging completed.");
    }
}
```

I created the relevant directories `build` and `src` then created `cs`.

I copied the built DLL to `cs` and created the C# source file above.

I used the below compile comannd in windows as I forgot about the windows dependancy and smooth-brained the solution.

`csc.exe -target:library -debug:full -o -unsafe -out:CSLogUtil.dll -recurse:LogUtil.cs`

After the compilation without issue, for shits and giggles - I tried reflected the newly created DLL into PowerShell.

```powershell
$file=get-item -Path .\CSLogUtil.dll
$ref=[System.Reflection.Assembly]::LoadFile($file)
```

This didn't work because the C# code was not appropriate.

Here is how I inlined it.

```powershell
$csharpCode = @"
using System;
using System.Runtime.InteropServices;
using System.Security;

public static class LogUtil
{
    private const string DllName = "LogUtil.dll";

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    public static extern bool LogInfo(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    public static extern bool LogError(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    public static extern bool LogWarning(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    public static extern bool LogVerbose(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);

    [SuppressUnmanagedCodeSecurity]
    [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
    [return: MarshalAs(UnmanagedType.U1)]
    public static extern bool LogDebug(string shortMessage, [MarshalAs(UnmanagedType.U1)] bool detailedDescription);
}
"@
Add-Type -TypeDefinition $csharpCode

[LogUtil]::LogInfo("Test Info", $false)
[LogUtil]::LogError("Test Error", $true)
[LogUtil]::LogWarning("Test Warning", $false)
[LogUtil]::LogVerbose("Test Verbose", $true)
[LogUtil]::LogDebug("Test Debug", $false)
```

And that is it for LogUtil