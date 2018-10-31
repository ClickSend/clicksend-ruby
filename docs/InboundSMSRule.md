# SwaggerClient::InboundSMSRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dedicated_number** | **String** | Dedicated Number. Can be &#39;*&#39; to apply to all numbers. | 
**rule_name** | **String** | Rule Name. | 
**message_search_type** | **Float** | Message Search Type: 0&#x3D;Any message, 1&#x3D;starts with, 2&#x3D;contains, 3&#x3D;does not contain. | 
**message_search_term** | **String** | Message search term. | 
**action** | **String** | Action to be taken (AUTO_REPLY, EMAIL_USER, EMAIL_FIXED, URL, SMS, POLL, GROUP_SMS, MOVE_CONTACT, CREATE_CONTACT, CREATE_CONTACT_PLUS_EMAIL, CREATE_CONTACT_PLUS_NAME_EMAIL CREATE_CONTACT_PLUS_NAME, SMPP, NONE). | 
**action_address** | **String** | Action address. | 
**enabled** | **Float** | Enabled: Disabled&#x3D;0 or Enabled&#x3D;1. | 


