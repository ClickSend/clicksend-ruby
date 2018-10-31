# SwaggerClient::PostDirectMail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Campaign name | 
**file_urls** | **Array&lt;String&gt;** | Campaign file URLs (maximum 2) | 
**size** | **String** | Document size - A5 or DL | 
**areas** | [**Array&lt;PostDirectMailArea&gt;**](PostDirectMailArea.md) | PostDirectMailArea model | 
**schedule** | **Integer** | Leave blank for immediate delivery. Your schedule time in unix format. | [optional] [default to 0]
**source** | **String** | Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. | [optional] [default to &#39;sdk&#39;]
**custom_string** | **String** | A custom string for your own reference | [optional] 


