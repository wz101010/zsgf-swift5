# ExternalAccountAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**externalAccountSignIn**](ExternalAccountAPI.md#externalaccountsignin) | **POST** /ExternalAccount/{appKey}/SignIn | 外部账号登录
[**userExternalAccountBind**](ExternalAccountAPI.md#userexternalaccountbind) | **POST** /ExternalAccount/{appKey} | 绑定外部账号
[**userOAuthAccounts**](ExternalAccountAPI.md#useroauthaccounts) | **GET** /ExternalAccount/{appKey} | 外部账号列表
[**userOAuthAccountsPutBind**](ExternalAccountAPI.md#useroauthaccountsputbind) | **PUT** /ExternalAccount/{appKey}/{id} | 更新绑定账号
[**userOAuthAccountsUnBind**](ExternalAccountAPI.md#useroauthaccountsunbind) | **DELETE** /ExternalAccount/{appKey}/{id} | 删除绑定账号


# **externalAccountSignIn**
```swift
    open class func externalAccountSignIn(appKey: String, externalAccountSignInRequest: ExternalAccountSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

外部账号登录

使用外部账号登录应用

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let externalAccountSignInRequest = ExternalAccountSignInRequest(unionID: "unionID_example", platform: "platform_example", twoFactorCode: "twoFactorCode_example") // ExternalAccountSignInRequest | 登录请求参数 (optional)

// 外部账号登录
ExternalAccountAPI.externalAccountSignIn(appKey: appKey, externalAccountSignInRequest: externalAccountSignInRequest) { (response, error) in
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
 **externalAccountSignInRequest** | [**ExternalAccountSignInRequest**](ExternalAccountSignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userExternalAccountBind**
```swift
    open class func userExternalAccountBind(appKey: String, externalAccountBindRequest: ExternalAccountBindRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

绑定外部账号

绑定外部账号，如果已存在绑定则直接返回成功

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let externalAccountBindRequest = ExternalAccountBindRequest(unionID: "unionID_example", platform: "platform_example", platformName: "platformName_example", avatar: "avatar_example", data: "data_example") // ExternalAccountBindRequest | 绑定请求参数 (optional)

// 绑定外部账号
ExternalAccountAPI.userExternalAccountBind(appKey: appKey, externalAccountBindRequest: externalAccountBindRequest) { (response, error) in
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
 **externalAccountBindRequest** | [**ExternalAccountBindRequest**](ExternalAccountBindRequest.md) | 绑定请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccounts**
```swift
    open class func userOAuthAccounts(appKey: String, completion: @escaping (_ data: UserLoginsListApiResponse?, _ error: Error?) -> Void)
```

外部账号列表

获取绑定成功的外部账号列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 外部账号列表
ExternalAccountAPI.userOAuthAccounts(appKey: appKey) { (response, error) in
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

[**UserLoginsListApiResponse**](UserLoginsListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccountsPutBind**
```swift
    open class func userOAuthAccountsPutBind(id: Int64, appKey: String, externalAccountPutRequest: ExternalAccountPutRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新绑定账号

更新绑定的账号信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 绑定ID
let appKey = "appKey_example" // String | 
let externalAccountPutRequest = ExternalAccountPutRequest(avatar: "avatar_example", data: "data_example", enable: false) // ExternalAccountPutRequest | 更新请求参数 (optional)

// 更新绑定账号
ExternalAccountAPI.userOAuthAccountsPutBind(id: id, appKey: appKey, externalAccountPutRequest: externalAccountPutRequest) { (response, error) in
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
 **id** | **Int64** | 绑定ID | 
 **appKey** | **String** |  | 
 **externalAccountPutRequest** | [**ExternalAccountPutRequest**](ExternalAccountPutRequest.md) | 更新请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccountsUnBind**
```swift
    open class func userOAuthAccountsUnBind(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除绑定账号

删除绑定的外部账号

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 绑定ID
let appKey = "appKey_example" // String | 

// 删除绑定账号
ExternalAccountAPI.userOAuthAccountsUnBind(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 绑定ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

