# GrantRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**redirectUri** | **String** | 返回地址。默认无限制，也可在【安全-开放认证网址白名单】配置 | [optional] 
**grantType** | **String** | 授权类型。可选：email、phone、unionid、account | 
**scopes** | **String** | 自定义授权范围，用英文空格分隔 | 
**userName** | **String** | 用户名。授权类型为：email/phone/account必填 | [optional] 
**password** | **String** | 登录密码。授权类型为：email/phone/account必填 | [optional] 
**unionId** | **String** | unionId。授权类型为：unionid必填 | [optional] 
**platform** | **String** | 平台。授权类型为：unionid必填 | [optional] 
**expireInDays** | **Int** | 授权有效期。1~99天 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


