# ClickSendClient::PostLetter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_url** | **String** | URL of file to send | 
**recipients** | [**Array&lt;PostRecipient&gt;**](PostRecipient.md) | Array of PostRecipient models | 
**template_used** | **Integer** | Whether using our template | [optional] [default to 0]
**duplex** | **Integer** | Whether letter is duplex | [optional] [default to 0]
**colour** | **Integer** | Whether letter is in colour | [optional] [default to 0]
**priority_post** | **Integer** | Whether letter is priority | [optional] [default to 0]
**source** | **String** | Source being sent from | [optional] [default to &#39;sdk&#39;]


