___TERMS_OF_SERVICE___

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
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

return {
  type: 'jsontag',
  endpointHostname: data.endpointHostname,
  endpointPath: data.endpointPath,
  enableGzip: data.enableGzip,
  globalPayloadData: data.globalPayloadData
};


___TESTS___

scenarios: []


___NOTES___

Created on 25.3.2025, 20:16:51


