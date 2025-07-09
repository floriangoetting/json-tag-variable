# JSON Tag Settings Variable

**Custom Variable Template for client-side Google Tag Manager**

The JSON Tag Settings Variable let's you configure Global Settings which are applied to all of your JSON Tags.

With the help of JSON Tag you can send your own JSON Data from your client-side GTM to your server-side GTM Instance and set stable, long-lasting server-set first party cookies to identify visitors and sessions.

For a detailed guide please check the [Blogpost about JSON Tag & JSON Client](https://www.floriangoetting.de/en/json-tag-json-client-a-flexible-first-party-tracking-solution-for-ssgtm/?utm_source=github&utm_medium=social&utm_campaign=ssgtm-json-tag-json-client-first-party-tracking&utm_content=json-tag-variable-repo).

![Community Template Gallery Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-brightgreen)

## How to install this Template
1. Go to the Templates Section in your GTM
2. In the Variable Templates Section click on "Search Gallery"
3. Search for "JSON Tag Settings"
4. Click on "JSON Tag Settings" in the results and on "Add to workspace"
5. Go to the Variables Section and start using the Variable

## Usage and Configuration Options
After you added this template to your container, you can create a new variable with it. In the Variables Section under "User-Defined Variables" click on "New". Then you need to choose "JSON Tag Settings" as the Variable Type.

Fill our the fields and save the variable.

Select the variable in each JSON Tag under the "Global Settings" in the field "Global Settings Configuration Variable".

### Library Settings
#### JSON Tag Library Hosting
You have the option here to configure your preferred way to host the JSON Tag Library. The JSON Tag Library is a very lightweight piece of code used to send the data to the Server.

The default Option is "jsDelivr" which will request the JSON Tag Library from the Github Repository https://github.com/floriangoetting/json-tag. If this option is selected, the Library Version needs to be specified. You can find more details about this in the next point.

The second Option is "Self-hosted" which let's you specify your own URL to load the JSON Tag Libary from. You can find the different Library Versions in the Release Section of the Github Repository of JSON Tag: https://github.com/floriangoetting/json-tag. Pick your version, search for the dist/jsonTagSendData-min.js file, upload it to your Server and set the url in the field Library URL. You also need to make sure to include your url to the allowed Script Injection Sources in the Permissions tab of the JSON Tag Template to avoid any Prohibited script URL errors.

The third Option is "Do not load library". If this option is selected, the JSON Tag Template will not inject the JSON Tag Library. This is helpful if you want to include the library directly into the source code of the Website or if you want to load the library within a <script type="text/gtmscript"></script> tag in the Google Tag Manager. For the Google Tag Manager approach you can pick your version in the release section of the https://github.com/floriangoetting/json-tag respository, search for the dist/jsonTagSendData-min.js file, copy the contents, paste it in a custom HTML Tag wrapped by <script type="text/gtmscript"></script> and add an initialization trigger to load the libary as soon as possible.

#### Library Version
If you select jsDelivr as Library Host, you need to specify the release version of JSON Tag. To find the available versions just check the Release Section within https://github.com/floriangoetting/json-tag.

#### Library URL
If you select the Self-hosted option, you need to specify the URL to the JSON Tag Library here. See details above under JSON Tag Library Hosting.

### Dispatching Settings
#### Endpoint Hostname
Set the endpoint hostname of your server-side GTM Instance. It needs to be a https Domain as for example "https://www.domain.com".

#### Endpoint Path
Set the path where your JSON Client endpoint in your server-side GTM Instance is available. This needs to match with the path you configured in the JSON Client Settings at the server-side GTM. It could be something like "/sgtm/data".

#### Enable GZIP Compression of JSON Post Body
This field can contain a variable which returns true or false and based on this, the JSON POST Body is compressed with the GZIP Compression or it is sent uncompressed. The GZIP Compression will be always disabled for Safari Browsers, even if GZIP Compression is activated here. The reason is, that Safari Browsers do not fully support GZIP Compression.
The benefit of this setting is, that network traffic can be reduced. A potential downside might be, that there a bit higher computation efforts needed from the server-side GTM to uncompress the data again.

### Global Payload Settings
#### Add Common Data
This checkbox let's you control if you want common data included in the JSON Tags which use this Settings Variable. The common data is useful to support basic functionalities of most Server Tags. If you wish to use your own data model instead, just uncheck the option.

The following common data will be included when the option is activated:
 
<ul>
<li>page_location</li>
<li>page_path</li>
<li>page_hostname</li>
<li>page_referrer</li>
<li>page_title</li>
<li>page_encoding</li>
<li>screen_resolution</li> <li>viewport_size</li>
<li>language</li>
</ul>

#### Global Event Payload
In the Global Event Payload settings it is possible to define key value pairs which are added to the JSON Payload to every JSON Tag event where the variable is selected as "Global Settings Configuration Variable".

### Processing Settings
#### Clean JSON Payload
If this checkbox is enabled, the event specific and global payload will be recursively cleaned by removing empty, null and undefined values. It will also remove the parent objects if they contain only empty or invalid values after the cleaning.

### Response Settings
#### Push Response in Data Layer
If this checkbox is enabled, the Device ID, Session ID and the configured tag responses will be pushed to the data layer to enable an easy access if needed, even if the Device and Session cookies are set with HTTP-Only Cookies.

#### Data Layer Name
You can specify the name of your Data Layer here in case you are not using the default "dataLayer" as a Data Layer name.

#### Data Layer Event Name
You can define the name of the Data Layer Event here if you wish to use a different Data Layer Event name than the default name "jsonclientResponse".

### Debugging Settings
#### X-Gtm-Server-Preview Token
This field allows you to specify the X-Gtm-Server-Preview header manually in order to be able to debug the requests in the ssGTM Preview Mode. The JSON Tag Library will use this token to add the X-Gtm-Server-Preview header to the requests. This could be a static value or a value read from a cookie where you store this information for example. Setting this field is normally not needed if you test in the same browser where the ssGTM Preview mode is running but it can be helpful if you test in one browser and use a different browser for the ssGTM Preview mode. It is also helpful when you want to debug App Webview Hits in the ssGTM Preview mode.

## How to contribute to the Template
Contributions to any of the Templates are highly welcome! The process to contribute works like this:

1. Fork the repository
2. Pull and merge all updates from the main repository
3. Make your adjustments to the files locally
4. Test the Templates with your changes in GTM and ssGTM
5. If you updated a template.tpl file, please do not replace the full original template.tpl file but only the part from "___TEMPLATE_PARAMETERS___" to the end of the file.
6. Create small commits with good comments to make it easy to follow your adjustments
7. Push the Commits
8. Create a new pull request for the main repository including an understandable summary of your changes

I will review the pull request and will provide feedback or questions if something is unclear. If everything is fine, your changes will be merged with the main repository and you will be listed in the list of contributors!
If you want to contribute but you don't know which adjustments make sense, please check the list of issues (https://github.com/floriangoetting/json-tag-variable/issues), where I and others will list feature wishes or bug reportings.

Please note that it is not planned to support GA4 as destination Analytics Tool. If you want to use GA4 or contribute to a project for first party tracking with GA4 support, please check out Stapes Data Tag (https://github.com/stape-io/data-tag).
