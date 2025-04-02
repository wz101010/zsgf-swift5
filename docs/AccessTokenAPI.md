# AccessTokenAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accessTokenDelete**](AccessTokenAPI.md#accesstokendelete) | **DELETE** /AccessToken/{appKey}/{id} | 删除令牌
[**accessTokenPost**](AccessTokenAPI.md#accesstokenpost) | **POST** /AccessToken/{appKey} | 创建令牌
[**accessTokenPut**](AccessTokenAPI.md#accesstokenput) | **PUT** /AccessToken/{appKey}/{id} | 更新令牌
[**accessTokens**](AccessTokenAPI.md#accesstokens) | **GET** /AccessToken/{appKey} | 令牌列表


# **accessTokenDelete**
```swift
    open class func accessTokenDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除令牌

删除用户令牌

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 令牌ID
let appKey = "appKey_example" // String | 

// 删除令牌
AccessTokenAPI.accessTokenDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 令牌ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accessTokenPost**
```swift
    open class func accessTokenPost(appKey: String, accessTokenPostRequest: AccessTokenPostRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

创建令牌

创建新的用户令牌

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let accessTokenPostRequest = AccessTokenPostRequest(title: "title_example", tags: "tags_example", userID: 123, description: "description_example", permissions: "permissions_example", expireInDays: 123) // AccessTokenPostRequest | 令牌创建请求参数 (optional)

// 创建令牌
AccessTokenAPI.accessTokenPost(appKey: appKey, accessTokenPostRequest: accessTokenPostRequest) { (response, error) in
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
 **accessTokenPostRequest** | [**AccessTokenPostRequest**](AccessTokenPostRequest.md) | 令牌创建请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accessTokenPut**
```swift
    open class func accessTokenPut(id: Int64, appKey: String, accessTokenPutRequest: AccessTokenPutRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新令牌

更新现有的用户令牌

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 令牌ID
let appKey = "appKey_example" // String | 
let accessTokenPutRequest = AccessTokenPutRequest(title: "title_example", tags: "tags_example", description: "description_example", permissions: "permissions_example", enable: false) // AccessTokenPutRequest | 令牌更新请求参数 (optional)

// 更新令牌
AccessTokenAPI.accessTokenPut(id: id, appKey: appKey, accessTokenPutRequest: accessTokenPutRequest) { (response, error) in
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
 **id** | **Int64** | 令牌ID | 
 **appKey** | **String** |  | 
 **accessTokenPutRequest** | [**AccessTokenPutRequest**](AccessTokenPutRequest.md) | 令牌更新请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accessTokens**
```swift
    open class func accessTokens(appKey: String, userId: Int64? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: AccessTokenListResultApiResponse?, _ error: Error?) -> Void)
```

令牌列表

获取用户令牌列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let userId = 987 // Int64 | 用户ID (optional)
let skip = 987 // Int | 跳过的记录数 (optional)
let take = 987 // Int | 获取的记录数 (optional)

// 令牌列表
AccessTokenAPI.accessTokens(appKey: appKey, userId: userId, skip: skip, take: take) { (response, error) in
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
 **userId** | **Int64** | 用户ID | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] 
 **take** | **Int** | 获取的记录数 | [optional] 

### Return type

[**AccessTokenListResultApiResponse**](AccessTokenListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

