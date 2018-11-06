# ClickSendClient::MmsMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | Recipient phone number in E.164 format | 
**body** | **String** | Your message | 
**subject** | **String** | Subject line (max 20 characters) | 
**from** | **String** | Your sender ID | [optional] 
**country** | **String** | Recipient country | [optional] 
**source** | **String** | Your method of sending | [optional] [default to &#39;sdk&#39;]
**list_id** | **Integer** | Your list ID if sending to a whole list (can be used instead of &#39;to&#39;) | [optional] 
**schedule** | **Integer** | Schedule time in unix format (leave blank for immediate delivery) | [optional] [default to 0]
**custom_string** | **String** | Custom string for your reference | [optional] 
**from_email** | **String** | Email to send replies to | [optional] 


