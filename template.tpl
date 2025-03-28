﻿___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "JSON Tag Settings",
  "categories": ["ANALYTICS", "CONVERSIONS","MARKETING"],
  "description": "A settings variable to be able to reuse the standard settings in multiple JSON Tags.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "dispatchingSettings",
    "displayName": "Dispatching Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "endpointHostname",
        "displayName": "Endpoint Hostname",
        "simpleValueType": true,
        "help": "The HTTPS Url of your Endpoint at the server. For example \"https://www.domain.com\".",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "REGEX",
            "args": [
              "^https?:\\/\\/[^\\/]+$"
            ]
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "endpointPath",
        "displayName": "Endpoint Path",
        "simpleValueType": true,
        "help": "The path of your endpoint at the server. For example \"/sst/measure\".",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "REGEX",
            "args": [
              "^\\/[^\\/]+(?:\\/[^\\/]+)*$"
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "enableGzip",
        "checkboxText": "Enable GZIP Compression of JSON Post Body",
        "simpleValueType": true,
        "help": "When this checkbox is activated, the JSON POST Body is compressed with the GZIP Compression."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "globalPayloadSettings",
    "displayName": "Global Payload Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "globalPayloadData",
        "displayName": "Global Event Payload",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Payload Key",
            "name": "payloadKey",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Payload Value",
            "name": "payloadValue",
            "type": "TEXT"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "processingSettings",
    "displayName": "Processing Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "cleanPayloadValues",
        "checkboxText": "Clean JSON Payload Values",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "If this checkbox is enabled, the event specific and global payload values will be recursively cleaned by removing empty, null and undefined values."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "returnSettings",
    "displayName": "Return Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "pushIdsInDataLayer",
        "checkboxText": "Push IDs in Data Layer",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "If this checkbox is enabled, the Device ID and Session ID will be pushed to the data layer to enable an easy access if needed, even if the Device and Session cookies are set with HTTP-Only Cookies."
      },
      {
        "type": "TEXT",
        "name": "dataLayerName",
        "displayName": "Data Layer Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "pushIdsInDataLayer",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "You can specify the name of your Data Layer here in case you are not using the default \"dataLayer\" as a Data Layer name.",
        "defaultValue": "dataLayer"
      },
      {
        "type": "TEXT",
        "name": "dataLayerEventName",
        "displayName": "Data Layer Event Name",
        "simpleValueType": true,
        "defaultValue": "idService",
        "help": "You can define the name of the Data Layer Event here if you wish to use a different Data Layer Event name than the default name \"idService\".",
        "enablingConditions": [
          {
            "paramName": "pushIdsInDataLayer",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

return {
  type: 'jsontag',
  endpointHostname: data.endpointHostname,
  endpointPath: data.endpointPath,
  enableGzip: data.enableGzip,
  globalPayloadData: data.globalPayloadData,
  cleanPayloadValues: data.cleanPayloadValues,
  pushIdsInDataLayer: data.pushIdsInDataLayer,
  dataLayerName: data.dataLayerName,
  dataLayerEventName: data.dataLayerEventName
};


___TESTS___

scenarios: []


___NOTES___

Created on 3.2.2025, 13:12:02


