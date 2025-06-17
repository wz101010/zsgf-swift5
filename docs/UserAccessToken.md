# UserAccessToken

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | 用户令牌的唯一标识符。 | [optional] 
**userID** | **Int64** | 与令牌关联的用户ID。 | [optional] 
**enable** | **Bool** | 指示令牌是否处于启用状态。 | [optional] 
**permissions** | **String** | 令牌拥有的权限列表，多个权限以逗号分隔。 | [optional] 
**title** | **String** | 令牌的标题或名称，用于标识令牌。 | [optional] 
**accessToken** | **String** | 访问令牌的具体值，用于身份验证。 | [optional] 
**tags** | **String** | 用于分类或标记令牌的标签。 | [optional] 
**description** | **String** | 令牌的详细描述信息。 | [optional] 
**expireTime** | **Date** | 令牌的过期时间，超过该时间令牌将失效。 | [optional] 
**createDate** | **Date** | 令牌的创建日期，默认为当前时间。 | [optional] 
**lastUpdate** | **Date** | 令牌的最后更新日期，默认为当前时间。 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


