# TeamAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teamDelete**](TeamAPI.md#teamdelete) | **DELETE** /Team/{id} | 删除团队
[**teamPost**](TeamAPI.md#teampost) | **POST** /Team | 创建团队
[**teamPut**](TeamAPI.md#teamput) | **PUT** /Team/{id} | 更新团队信息
[**teams**](TeamAPI.md#teams) | **GET** /Team | 获取团队列表


# **teamDelete**
```swift
    open class func teamDelete(id: Int64, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除团队

根据团队ID删除团队

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 团队ID

// 删除团队
TeamAPI.teamDelete(id: id) { (response, error) in
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
 **id** | **Int64** | 团队ID | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamPost**
```swift
    open class func teamPost(team: Team? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

创建团队

创建一个新的团队

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let team = Team(id: 123, userID: 123, channelCode: "channelCode_example", channelAppID: "channelAppID_example", role: "role_example", permission: "permission_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // Team | 团队信息 (optional)

// 创建团队
TeamAPI.teamPost(team: team) { (response, error) in
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
 **team** | [**Team**](Team.md) | 团队信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamPut**
```swift
    open class func teamPut(id: Int64, team: Team? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新团队信息

根据团队ID更新团队信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 团队ID
let team = Team(id: 123, userID: 123, channelCode: "channelCode_example", channelAppID: "channelAppID_example", role: "role_example", permission: "permission_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // Team | 团队信息 (optional)

// 更新团队信息
TeamAPI.teamPut(id: id, team: team) { (response, error) in
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
 **id** | **Int64** | 团队ID | 
 **team** | [**Team**](Team.md) | 团队信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teams**
```swift
    open class func teams(channelCode: String? = nil, channelAppId: String? = nil, completion: @escaping (_ data: ListResponseItemListApiResponse?, _ error: Error?) -> Void)
```

获取团队列表

根据渠道代码和渠道应用ID获取团队列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let channelCode = "channelCode_example" // String | 渠道代码 (optional)
let channelAppId = "channelAppId_example" // String | 渠道应用ID (optional)

// 获取团队列表
TeamAPI.teams(channelCode: channelCode, channelAppId: channelAppId) { (response, error) in
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
 **channelCode** | **String** | 渠道代码 | [optional] 
 **channelAppId** | **String** | 渠道应用ID | [optional] 

### Return type

[**ListResponseItemListApiResponse**](ListResponseItemListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

