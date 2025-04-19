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
    "name": "librarySettings",
    "displayName": "Library Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "libraryHost",
        "displayName": "JSON Tag Library Hosting",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "jsDelivr",
            "displayValue": "jsDelivr"
          },
          {
            "value": "selfHosted",
            "displayValue": "Self-hosted"
          },
          {
            "value": "none",
            "displayValue": "Do not load library"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "jsDelivr",
        "help": "You have the option here to configure your preferred way to host the JSON Tag Library. The JSON Tag Library is a very lightweight piece of code used to send the data to the Server. You can find more details about the configuration options in the documentation on GitHub: https://github.com/floriangoetting/json-tag"
      },
      {
        "type": "TEXT",
        "name": "libraryVersion",
        "displayName": "Library Version",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "libraryHost",
            "paramValue": "jsDelivr",
            "type": "EQUALS"
          }
        ],
        "help": "If you select jsDelivr as Library Host, you need to specify the release version of JSON Tag. To find the available versions just check the Release Section within https://github.com/floriangoetting/json-tag.",
        "defaultValue": "1.4.1"
      },
      {
        "type": "TEXT",
        "name": "libraryUrl",
        "displayName": "Library URL",
        "simpleValueType": true,
        "help": "If you select the Self-hosted option, you need to specify the URL to the JSON Tag Library here. You can find the different Library Versions in the Release Section of the Github Repository of JSON Tag: https://github.com/floriangoetting/json-tag. Pick your version, search for the dist/jsonTagSendData-min.js file, upload it to your Server and set the url here. You also need to make sure to include your url to the allowed Script Injection Sources in the Permissions tab of the JSON Tag Template to avoid any Prohibited script URL errors.",
        "enablingConditions": [
          {
            "paramName": "libraryHost",
            "paramValue": "selfHosted",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
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
        "type": "TEXT",
        "name": "enableGzip",
        "displayName": "Enable GZIP Compression of JSON Post Body",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "This field can contain a variable which returns true or false and based on this, the JSON POST Body is compressed with the GZIP Compression or it is send uncompressed. The GZIP Compression will be always disabled for Safari Browsers even if GZIP Compression is activated here. The reason is, that Safari Browsers do not fully support GZIP Compression."
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
        "name": "cleanPayload",
        "checkboxText": "Clean JSON Payload",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "If this checkbox is enabled, the event specific and global payload will be recursively cleaned by removing empty, null and undefined values. It will also remove the parent objects if they contain only empty or invalid values after the cleaning."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "responseSettings",
    "displayName": "Response Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "pushResponseInDataLayer",
        "checkboxText": "Push Response in Data Layer",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "If this checkbox is enabled, the Device ID, Session ID and the configured tag responses will be pushed to the data layer to enable an easy access if needed, even if the Device and Session cookies are set with HTTP-Only Cookies."
      },
      {
        "type": "TEXT",
        "name": "dataLayerName",
        "displayName": "Data Layer Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "pushResponseInDataLayer",
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
        "defaultValue": "jsonclientResponse",
        "help": "You can define the name of the Data Layer Event here if you wish to use a different Data Layer Event name than the default name \"jsonclientResponse\".",
        "enablingConditions": [
          {
            "paramName": "pushResponseInDataLayer",
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
  libraryHost: data.libraryHost,
  libraryVersion: data.libraryVersion,
  libraryUrl: data.libraryUrl,
  endpointHostname: data.endpointHostname,
  endpointPath: data.endpointPath,
  enableGzip: data.enableGzip,
  globalPayloadData: data.globalPayloadData,
  cleanPayload: data.cleanPayload,
  pushResponseInDataLayer: data.pushResponseInDataLayer,
  dataLayerName: data.dataLayerName,
  dataLayerEventName: data.dataLayerEventName
};


___TESTS___

scenarios: []


___NOTES___

Created on 3.2.2025, 13:12:02


