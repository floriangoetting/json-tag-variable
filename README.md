# JSON Tag Settings Variable

**Custom Variable Template for client-side Google Tag Manager**

The JSON Tag Settings Variable let's you configure Global Settings which are applied to all of your JSON Tags.

With the help of JSON Tag you can send your own JSON Data from your client-side GTM to your server-side GTM Instance and set stable, long-lasting server-set first party cookies to identify visitors and sessions.

## Usage and Configuration Options
Add this template to your container and create a new variable with it.

Fill our the fields and save the variable.

Select the variable in each JSON Tag under the "Global Settings" in the field "Global Settings Configuration Variable".

### JSON Tag Library Hosting
You have the option here to configure your preferred way to host the JSON Tag Library. The JSON Tag Library is a very lightweight piece of code used to send the data to the Server.

The default Option is "jsDelivr" which will request the JSON Tag Library from the Github Repository https://github.com/floriangoetting/json-tag. If this option is selected, the Library Version needs to be specified. You can find more details about this in the next point.

The second Option is "Self-hosted" which let's you specify your own URL to load the JSON Tag Libary from. You can find the different Library Versions in the Release Section of the Github Repository of JSON Tag: https://github.com/floriangoetting/json-tag. Pick your version, search for the dist/jsonTagSendData-min.js file, upload it to your Server and set the url in the field Library URL. You also need to make sure to include your url to the allowed Script Injection Sources in the Permissions tab of the JSON Tag Template to avoid any Prohibited script URL errors.

### Library Version
If you select jsDelivr as Library Host, you need to specify the release version of JSON Tag. To find the available versions just check the Release Section within https://github.com/floriangoetting/json-tag.

### Library Library URL
If you select the Self-hosted option, you need to specify the URL to the JSON Tag Library here. See details above under JSON Tag Library Hosting.

### Endpoint Hostname
Set the endpoint hostname of your server-side GTM Instance. It needs to be a https Domain as for example "https://www.domain.com".

### Endpoint Path
Set the path where your JSON Client endpoint in your server-side GTM Instance is available. This needs to match with the path you configured in the JSON Client Settings at the server-side GTM. It could be something like "/sgtm/data".

### Enable GZIP Compression of JSON Post Body
When the option "Enable GZIP Compression of JSON Post Body" is checked, the JSON Post Body will be compressed using GZIP before it is sent to the server. The benefit of this setting is, that network traffic can be reduced. A potential downside might be that there a bit higher computation efforts needed from the server-side GTM to uncompress the data again.

### Global Payload Settings
In the Global Payload Settings it is possible to define key value pairs which are added to the JSON Payload to every JSON Tag event where the variable is selected as "Global Settings Configuration Variable".

### Clean JSON Payload Values
If this checkbox is enabled, the event specific and global payload values will be recursively cleaned by removing empty, null and undefined values.

### Push IDs in Data Layer
If this checkbox is enabled, the Device ID and Session ID will be pushed to the data layer to enable an easy access if needed, even if the Device and Session cookies are set with HTTP-Only Cookies.

### Data Layer Name
You can specify the name of your Data Layer here in case you are not using the default "dataLayer" as a Data Layer name.

### Data Layer Event Name
You can define the name of the Data Layer Event here if you wish to use a different Data Layer Event name than the default name "idService".