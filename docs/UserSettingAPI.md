# UserSettingAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userSetting**](UserSettingAPI.md#usersetting) | **GET** /UserSetting/{appKey}/{id} | 获取用户配置项详情
[**userSettingDelete**](UserSettingAPI.md#usersettingdelete) | **DELETE** /UserSetting/{appKey}/{id} | 删除用户配置项
[**userSettingPost**](UserSettingAPI.md#usersettingpost) | **POST** /UserSetting/{appKey} | 添加用户配置项
[**userSettingPut**](UserSettingAPI.md#usersettingput) | **PUT** /UserSetting/{appKey}/{id} | 更新用户配置项
[**userSettings**](UserSettingAPI.md#usersettings) | **GET** /UserSetting/{appKey} | 获取用户配置列表


# **userSetting**
```swift
    open class func userSetting(id: Int64, appKey: String, completion: @escaping (_ data: UserSettingApiResponse?, _ error: Error?) -> Void)
```

获取用户配置项详情

根据配置项ID获取用户配置项详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置项ID
let appKey = "appKey_example" // String | 

// 获取用户配置项详情
UserSettingAPI.userSetting(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 配置项ID | 
 **appKey** | **String** |  | 

### Return type

[**UserSettingApiResponse**](UserSettingApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingDelete**
```swift
    open class func userSettingDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除用户配置项

根据配置项ID删除用户配置项

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置项ID
let appKey = "appKey_example" // String | 

// 删除用户配置项
UserSettingAPI.userSettingDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 配置项ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingPost**
```swift
    open class func userSettingPost(appKey: String, userSetting: UserSetting? = nil, completion: @escaping (_ data: UserSettingPostResultApiResponse?, _ error: Error?) -> Void)
```

添加用户配置项

添加新的用户配置项

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let userSetting = UserSetting(id: 123, userID: 123, providerCode: "providerCode_example", groupCode: "groupCode_example", code: "code_example", value: "value_example", tags: "tags_example", description: "description_example", frontendUsable: false, createDate: Date(), lastUpdate: Date()) // UserSetting | 配置项内容 (optional)

// 添加用户配置项
UserSettingAPI.userSettingPost(appKey: appKey, userSetting: userSetting) { (response, error) in
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
 **userSetting** | [**UserSetting**](UserSetting.md) | 配置项内容 | [optional] 

### Return type

[**UserSettingPostResultApiResponse**](UserSettingPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingPut**
```swift
    open class func userSettingPut(id: Int64, appKey: String, userSetting: UserSetting? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新用户配置项

根据配置项ID更新用户配置项内容

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置项ID
let appKey = "appKey_example" // String | 
let userSetting = UserSetting(id: 123, userID: 123, providerCode: "providerCode_example", groupCode: "groupCode_example", code: "code_example", value: "value_example", tags: "tags_example", description: "description_example", frontendUsable: false, createDate: Date(), lastUpdate: Date()) // UserSetting | 配置项内容 (optional)

// 更新用户配置项
UserSettingAPI.userSettingPut(id: id, appKey: appKey, userSetting: userSetting) { (response, error) in
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
 **id** | **Int64** | 配置项ID | 
 **appKey** | **String** |  | 
 **userSetting** | [**UserSetting**](UserSetting.md) | 配置项内容 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettings**
```swift
    open class func userSettings(appKey: String, userId: Int64? = nil, code: String? = nil, tag: String? = nil, completion: @escaping (_ data: UserSettingListApiResponse?, _ error: Error?) -> Void)
```

获取用户配置列表

根据用户ID、配置项代码和标签获取用户配置列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let userId = 987 // Int64 | 用户ID (optional)
let code = "code_example" // String | 配置项代码 (optional)
let tag = "tag_example" // String | 配置项标签 (optional)

// 获取用户配置列表
UserSettingAPI.userSettings(appKey: appKey, userId: userId, code: code, tag: tag) { (response, error) in
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
 **code** | **String** | 配置项代码 | [optional] 
 **tag** | **String** | 配置项标签 | [optional] 

### Return type

[**UserSettingListApiResponse**](UserSettingListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

