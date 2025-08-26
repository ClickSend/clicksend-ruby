# ClickSendClient::FaxMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **String** | Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. | [optional] [default to &#39;sdk&#39;]
**to** | **String** | Recipient fax number in E.164 format. | 
**list_id** | **Integer** | Your list ID if sending to a whole list. Can be used instead of &#39;to&#39;. | [optional] 
**from** | **String** | Your sender id. Must be a valid fax number. | [optional] 
**schedule** | **Integer** | Leave blank for immediate delivery. Your schedule time in unix format https://help.clicksend.com/en/articles/44235-what-is-a-unix-timestamp | [optional] 
**custom_string** | **String** | Your reference. Will be passed back with all replies and delivery reports. | [optional] 
**country** | **String** | Recipient country. | [optional] 
**from_email** | **String** | An email address where the reply should be emailed to. | [optional] 


