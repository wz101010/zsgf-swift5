# AuthorizePolicyAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizePolicies**](AuthorizePolicyAPI.md#authorizepolicies) | **GET** /AuthorizePolicy/{appKey} | 获取鉴权策略列表
[**authorizePolicy**](AuthorizePolicyAPI.md#authorizepolicy) | **GET** /AuthorizePolicy/{appKey}/{id} | 获取鉴权策略详情
[**authorizePolicyDelete**](AuthorizePolicyAPI.md#authorizepolicydelete) | **DELETE** /AuthorizePolicy/{appKey}/{id} | 删除鉴权策略
[**authorizePolicyPost**](AuthorizePolicyAPI.md#authorizepolicypost) | **POST** /AuthorizePolicy/{appKey} | 添加鉴权策略
[**authorizePolicyPut**](AuthorizePolicyAPI.md#authorizepolicyput) | **PUT** /AuthorizePolicy/{appKey}/{id} | 更新鉴权策略


# **authorizePolicies**
```swift
    open class func authorizePolicies(appKey: String, authType: String? = nil, policyName: String? = nil, completion: @escaping (_ data: AuthorizePolicyListApiResponse?, _ error: Error?) -> Void)
```

获取鉴权策略列表

根据鉴权类型和策略名称获取鉴权策略列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let authType = "authType_example" // String | 鉴权类型（access_token、user、role） (optional)
let policyName = "policyName_example" // String | 策略名称 (optional)

// 获取鉴权策略列表
AuthorizePolicyAPI.authorizePolicies(appKey: appKey, authType: authType, policyName: policyName) { (response, error) in
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
 **authType** | **String** | 鉴权类型（access_token、user、role） | [optional] 
 **policyName** | **String** | 策略名称 | [optional] 

### Return type

[**AuthorizePolicyListApiResponse**](AuthorizePolicyListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizePolicy**
```swift
    open class func authorizePolicy(id: Int64, appKey: String, completion: @escaping (_ data: AuthorizePolicyApiResponse?, _ error: Error?) -> Void)
```

获取鉴权策略详情

根据鉴权策略ID获取鉴权策略详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 鉴权策略ID
let appKey = "appKey_example" // String | 

// 获取鉴权策略详情
AuthorizePolicyAPI.authorizePolicy(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 鉴权策略ID | 
 **appKey** | **String** |  | 

### Return type

[**AuthorizePolicyApiResponse**](AuthorizePolicyApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizePolicyDelete**
```swift
    open class func authorizePolicyDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除鉴权策略

根据鉴权策略ID删除鉴权策略

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 鉴权策略ID
let appKey = "appKey_example" // String | 

// 删除鉴权策略
AuthorizePolicyAPI.authorizePolicyDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 鉴权策略ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizePolicyPost**
```swift
    open class func authorizePolicyPost(appKey: String, authorizePolicy: AuthorizePolicy? = nil, completion: @escaping (_ data: CreatePostResultApiResponse?, _ error: Error?) -> Void)
```

添加鉴权策略

添加新的鉴权策略

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let authorizePolicy = AuthorizePolicy(id: 123, policyName: "policyName_example", authorizeType: "authorizeType_example", policyValue: "policyValue_example", createDate: Date(), lastUpdate: Date()) // AuthorizePolicy | 鉴权策略对象 (optional)

// 添加鉴权策略
AuthorizePolicyAPI.authorizePolicyPost(appKey: appKey, authorizePolicy: authorizePolicy) { (response, error) in
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
 **authorizePolicy** | [**AuthorizePolicy**](AuthorizePolicy.md) | 鉴权策略对象 | [optional] 

### Return type

[**CreatePostResultApiResponse**](CreatePostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizePolicyPut**
```swift
    open class func authorizePolicyPut(id: Int64, appKey: String, authorizePolicy: AuthorizePolicy? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新鉴权策略

根据鉴权策略ID更新鉴权策略

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 鉴权策略ID
let appKey = "appKey_example" // String | 
let authorizePolicy = AuthorizePolicy(id: 123, policyName: "policyName_example", authorizeType: "authorizeType_example", policyValue: "policyValue_example", createDate: Date(), lastUpdate: Date()) // AuthorizePolicy | 鉴权策略对象 (optional)

// 更新鉴权策略
AuthorizePolicyAPI.authorizePolicyPut(id: id, appKey: appKey, authorizePolicy: authorizePolicy) { (response, error) in
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
 **id** | **Int64** | 鉴权策略ID | 
 **appKey** | **String** |  | 
 **authorizePolicy** | [**AuthorizePolicy**](AuthorizePolicy.md) | 鉴权策略对象 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

