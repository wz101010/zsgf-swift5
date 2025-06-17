# UnionIDSignUpRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userName** | **String** | 登录账号，可空，只能包含字母、数字、下划线和连字符 | [optional] 
**unionID** | **String** | UnionID，长度不能超过99个字符，只能包含字母、数字、下划线和连字符 | 
**platform** | **String** | 平台标识，长度必须在1到20个字符之间，只能包含字母和数字 | 
**pwd** | **String** | 密码，长度必须在6到32个字符之间，只允许英文大小写、数字、标点符号 | 
**nickName** | **String** | 用户昵称 | [optional] 
**avatar** | **String** | 用户头像URL | [optional] 
**data** | **String** | 自定义数据 | [optional] 
**email** | **String** | 用户邮箱 | [optional] 
**emailCode** | **String** | 邮箱验证码（只有启用的邮箱验证码功能时，才需要传入），长度为4到8位的数字 | [optional] 
**phone** | **String** | 用户手机号，必须为11位数字 | [optional] 
**phoneCode** | **String** | 手机验证码（只有启用的手机验证码功能时，才需要传入），长度为4到8位的数字 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


