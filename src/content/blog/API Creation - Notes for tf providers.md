---
title: API Creation - Notes for tf providers
description: General notes for creating CRUDs
pubDate: Feb 08 2024
heroImage: /blog-placeholder-3.jpg
---




```yml
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


```yml
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








HTTP/1.1 200 OK
Content-Type: application/json

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






"administrativeUnits": [
  "String"
],



administrativeUnits ,String collection, The administrative units tagged to an audit log record.
auditData ,microsoft.graph.security.auditData  ,A JSON object that contains the actual audit log data.
auditLogRecordType  ,microsoft.graph.security.auditLogRecordType, The type of operation indicated by the record.

clientIp  String
createdDateTime DateTimeOffset (not really, actually just a string)
id            String
objectId            String
operation           String
organizationId            String
service           String
userId            String
userPrincipalName           String
userType                    microsoft.graph.security.auditLogUserType



JSON representation
The following JSON representation shows the resource type.


{
  "@odata.type": "#microsoft.graph.security.auditLogRecord",
  "id": "String (identifier)",
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
  "administrativeUnits": ["String"],
  "auditData": {
    "@odata.type": "microsoft.graph.security.auditData"
  }
}






microsoft.graph.security.detonationObservables:
      value:
        contactedIps:
          - String
        contactedUrls:
          - String
        droppedfiles:
          - String
    microsoft.graph.security.deviceEvidence:
      value:
        azureAdDeviceId: String
        defenderAvStatus:
          '@odata.type': microsoft.graph.security.defenderAvStatus
        deviceDnsName: String
        firstSeenDateTime: '0001-01-01T00:00:00.0000000+00:00'
        healthStatus:
          '@odata.type': microsoft.graph.security.deviceHealthStatus
        ipInterfaces:
          - String
        lastExternalIpAddress: String
        lastIpAddress: String
        loggedOnUsers:
          - '@odata.type': microsoft.graph.security.loggedOnUser
        mdeDeviceId: String
        onboardingStatus:
          '@odata.type': microsoft.graph.security.onboardingStatus
        osBuild: '0'
        osPlatform: String
        rbacGroupId: '0'
        rbacGroupName: String
        riskScore:
          '@odata.type': microsoft.graph.security.deviceRiskScore
        version: String
        vmMetadata:
          '@odata.type': microsoft.graph.security.vmMetadata
    microsoft.graph.security.dictionary: { }
    microsoft.graph.security.disableUserResponseAction:
      value:
        identifier:
          '@odata.type': microsoft.graph.security.disableUserEntityIdentifier
    microsoft.graph.security.dnsEvidence:
      value:
        dnsServerIp:
          '@odata.type': microsoft.graph.security.ipEvidence
        domainName: String
        hostIpAddress:
          '@odata.type': microsoft.graph.security.ipEvidence
        ipAddresses:
          - '@odata.type': microsoft.graph.security.ipEvidence
    microsoft.graph.security.downgradeJustification:
      value:
        isDowngradeJustified: 'true'
        justificationMessage: String
    microsoft.graph.security.dynamicColumnValue: { }






https://learn.microsoft.com/en-us/graph/api/resources/security-error-codes?view=graph-rest-beta#threat-indicator-bulk-action-errors







requestBody:
        description: Action parameters
        content:
          application/json:
            schema:
              type: object
              properties:
                type:
                  type: string
                  nullable: true
                scope:
                  type: string
                  nullable: true
                expirationDateTime:
                  pattern: '^[0-9]{4,}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]([.][0-9]{1,12})?(Z|[+-][0-9][0-9]:[0-9][0-9])$'
                  type: string
                  format: date-time
                  nullable: true
                password:
                  type: string
                  nullable: true
                message:
                  type: string
                  nullable: true
                recipients:
                  type: array
                  items:
                    $ref: '#/components/schemas/microsoft.graph.driveRecipient'
                retainInheritedPermissions:
                  type: boolean
                  default: false
                  nullable: true
                sendNotification:
                  type: boolean
                  default: false
                  nullable: true
        required: true








"administrativeUnits": [
        "String"
      ],

















{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "filterStartDateTime": "String (timestamp)",
  "filterEndDateTime": "String (timestamp)",
  "recordTypeFilters": [
    "String"
  ],
  "keywordFilter": "String",
  "serviceFilter": "String",
  "operationFilters": [
    "String"
  ],
  "userPrincipalNameFilters": [
    "String"
  ],
  "ipAddressFilters": [
    "String"
  ],
  "objectIdFilters": [
    "String"
  ],
  "administrativeUnitIdFilters": [
    "String"
  ],
  "status": "String"
}
















{
  "@odata.type": "#microsoft.graph.security.auditLogRecord",
  "id": "String (identifier)",
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
  "administrativeUnits": ["String"],
  "auditData": {
    "@odata.type": "microsoft.graph.security.auditData"
  }
}














HTTP/1.1 200 OK
Content-Type: application/json

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







{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "filterStartDateTime": "String (timestamp)",
  "filterEndDateTime": "String (timestamp)",
  "recordTypeFilters": [
    "String"
  ],
  "keywordFilter": "String",
  "serviceFilter": "String",
  "operationFilters": [
    "String"
  ],
  "userPrincipalNameFilters": [
    "String"
  ],
  "ipAddressFilters": [
    "String"
  ],
  "objectIdFilters": [
    "String"
  ],
  "administrativeUnitIdFilters": [
    "String"
  ],
  "status": "String"
}




$apiUrl = "https://graph.microsoft.com/beta/security/auditLog/queries/$scanId/records"
        
Do {
    $response = Invoke-MgGraphRequest -Method Get -Uri $apiUrl -ContentType 'application/json'
    if ($response.value) {
        $filePath = Join-Path -Path $OutputDir -ChildPath $outputFilePath
        $response.value | ConvertTo-Json -Depth 100 | Out-File -FilePath $filePath -Append
        
    }
    $apiUrl = $response.'@odata.nextLink'
} While ($apiUrl)
```