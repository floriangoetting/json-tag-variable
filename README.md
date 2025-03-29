# JSON Tag Settings Variable

**Custom Variable Template for client-side Google Tag Manager**

The JSON Tag Settings Variable let's you configure Global Settings which apply to all of your JSON Tags.

With the help of JSON Tag you can send your own JSON Data from your client-side GTM to your server-side GTM Instance and set stable, long-lasting server-set first party cookies to identify visitors and sessions.

## Usage and Configuration Options
Add this template to your container and create a new variable with it.

Fill our the fields and save the variable.

Select the variable in each JSON Tag under the "Global Settings" in the field "Global Settings Configuration Variable".

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
