# OAuthAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**oAuthAuthorize**](OAuthAPI.md#oauthauthorize) | **POST** /OAuth/{appKey}/Authorize | 获取access_token
[**oAuthConsents**](OAuthAPI.md#oauthconsents) | **GET** /OAuth/{appKey}/Consents | 授权记录
[**oAuthDeleteConsent**](OAuthAPI.md#oauthdeleteconsent) | **DELETE** /OAuth/{appKey}/Consents/{id} | 删除授权记录
[**oAuthGrantCode**](OAuthAPI.md#oauthgrantcode) | **POST** /OAuth/{appKey}/GrantCode | 申请授权码
[**oAuthProfile**](OAuthAPI.md#oauthprofile) | **GET** /OAuth/{appKey}/Profile | 获取个人资料


# **oAuthAuthorize**
```swift
    open class func oAuthAuthorize(appKey: String, scheme: String? = nil, code: String? = nil, completion: @escaping (_ data: AuthorizeResultApiResponse?, _ error: Error?) -> Void)
```

获取access_token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let scheme = "scheme_example" // String | 身份源 (optional)
let code = "code_example" // String | 授权码 (optional)

// 获取access_token
OAuthAPI.oAuthAuthorize(appKey: appKey, scheme: scheme, code: code) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **scheme** | **String** | 身份源 | [optional] 
 **code** | **String** | 授权码 | [optional] 

### Return type

[**AuthorizeResultApiResponse**](AuthorizeResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oAuthConsents**
```swift
    open class func oAuthConsents(appKey: String, completion: @escaping (_ data: AppUserConsentModelListApiResponse?, _ error: Error?) -> Void)
```

授权记录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 授权记录
OAuthAPI.oAuthConsents(appKey: appKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 

### Return type

[**AppUserConsentModelListApiResponse**](AppUserConsentModelListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oAuthDeleteConsent**
```swift
    open class func oAuthDeleteConsent(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除授权记录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 
let appKey = "appKey_example" // String | 

// 删除授权记录
OAuthAPI.oAuthDeleteConsent(id: id, appKey: appKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int64** |  | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oAuthGrantCode**
```swift
    open class func oAuthGrantCode(appKey: String, scheme: String? = nil, grantRequest: GrantRequest? = nil, completion: @escaping (_ data: GrantResultApiResponse?, _ error: Error?) -> Void)
```

申请授权码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let scheme = "scheme_example" // String | 身份源，固定填：app (optional)
let grantRequest = GrantRequest(redirectUri: "redirectUri_example", grantType: "grantType_example", scopes: "scopes_example", userName: "userName_example", password: "password_example", unionId: "unionId_example", platform: "platform_example", expireInDays: 123) // GrantRequest | 授权详情 (optional)

// 申请授权码
OAuthAPI.oAuthGrantCode(appKey: appKey, scheme: scheme, grantRequest: grantRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **scheme** | **String** | 身份源，固定填：app | [optional] 
 **grantRequest** | [**GrantRequest**](GrantRequest.md) | 授权详情 | [optional] 

### Return type

[**GrantResultApiResponse**](GrantResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oAuthProfile**
```swift
    open class func oAuthProfile(appKey: String, completion: @escaping (_ data: ProfileResultApiResponse?, _ error: Error?) -> Void)
```

获取个人资料

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 获取个人资料
OAuthAPI.oAuthProfile(appKey: appKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 

### Return type

[**ProfileResultApiResponse**](ProfileResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

