# AppAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**app**](AppAPI.md#app) | **GET** /App/{appKey} | 应用详情
[**app2FA**](AppAPI.md#app2fa) | **GET** /App/{appKey}/2FA | 双因素验证 获取
[**app2FACheck**](AppAPI.md#app2facheck) | **GET** /App/{appKey}/2FACheck | 双因素验证 验证
[**appCheckVersion**](AppAPI.md#appcheckversion) | **GET** /App/{appKey}/CheckVersion | 更新应用数据库
[**appDelete**](AppAPI.md#appdelete) | **DELETE** /App/{appKey} | 删除应用
[**appInfo**](AppAPI.md#appinfo) | **GET** /App/{appKey}/Info | 应用详情
[**appPost**](AppAPI.md#apppost) | **POST** /App | 创建应用
[**appPut**](AppAPI.md#appput) | **PUT** /App/{appKey} | 更新应用
[**appTransfer**](AppAPI.md#apptransfer) | **GET** /App/{appKey}/Transfer | 转移应用
[**apps**](AppAPI.md#apps) | **GET** /App | 应用列表


# **app**
```swift
    open class func app(appKey: String, completion: @escaping (_ data: AppApiResponse?, _ error: Error?) -> Void)
```

应用详情

根据应用Key获取应用的详细信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 应用详情
AppAPI.app(appKey: appKey) { (response, error) in
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

[**AppApiResponse**](AppApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **app2FA**
```swift
    open class func app2FA(appKey: String, completion: @escaping (_ data: SetupCodeApiResponse?, _ error: Error?) -> Void)
```

双因素验证 获取

获取应用的双因素验证信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 双因素验证 获取
AppAPI.app2FA(appKey: appKey) { (response, error) in
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

[**SetupCodeApiResponse**](SetupCodeApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **app2FACheck**
```swift
    open class func app2FACheck(appKey: String, code: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

双因素验证 验证

验证应用的双因素验证代码。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let code = "code_example" // String | 双因素验证代码 (optional)

// 双因素验证 验证
AppAPI.app2FACheck(appKey: appKey, code: code) { (response, error) in
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
 **code** | **String** | 双因素验证代码 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCheckVersion**
```swift
    open class func appCheckVersion(appKey: String, checkOnly: Bool? = nil, completion: @escaping (_ data: AppCheckVersionResultApiResponse?, _ error: Error?) -> Void)
```

更新应用数据库

检查应用数据库的版本，如果有未应用的迁移且checkOnly为false，则应用这些迁移。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let checkOnly = true // Bool | 是否仅检查版本 (optional) (default to true)

// 更新应用数据库
AppAPI.appCheckVersion(appKey: appKey, checkOnly: checkOnly) { (response, error) in
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
 **checkOnly** | **Bool** | 是否仅检查版本 | [optional] [default to true]

### Return type

[**AppCheckVersionResultApiResponse**](AppCheckVersionResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appDelete**
```swift
    open class func appDelete(appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除应用

根据应用Key删除应用。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 删除应用
AppAPI.appDelete(appKey: appKey) { (response, error) in
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

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appInfo**
```swift
    open class func appInfo(appKey: String, propCode: String? = nil, completion: @escaping (_ data: AppInfoResultApiResponse?, _ error: Error?) -> Void)
```

应用详情

根据应用Key获取应用的详细信息和属性。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let propCode = "propCode_example" // String | 属性代码 (optional)

// 应用详情
AppAPI.appInfo(appKey: appKey, propCode: propCode) { (response, error) in
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
 **propCode** | **String** | 属性代码 | [optional] 

### Return type

[**AppInfoResultApiResponse**](AppInfoResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPost**
```swift
    open class func appPost(app: App? = nil, completion: @escaping (_ data: AppPostResultApiResponse?, _ error: Error?) -> Void)
```

创建应用

创建一个新的应用。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let app = App(id: 123, userID: 123, projectID: 123, website: "website_example", name: "name_example", logo: "logo_example", description: "description_example", tags: "tags_example", appKey: "appKey_example", appSecret: "appSecret_example", clientSecret: "clientSecret_example", sshPublickey: "sshPublickey_example", share: false, createDate: Date(), lastUpdate: Date(), show: false, showIndex: 123) // App | 应用对象 (optional)

// 创建应用
AppAPI.appPost(app: app) { (response, error) in
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
 **app** | [**App**](App.md) | 应用对象 | [optional] 

### Return type

[**AppPostResultApiResponse**](AppPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPut**
```swift
    open class func appPut(appKey: String, app: App? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新应用

根据应用Key更新应用信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let app = App(id: 123, userID: 123, projectID: 123, website: "website_example", name: "name_example", logo: "logo_example", description: "description_example", tags: "tags_example", appKey: "appKey_example", appSecret: "appSecret_example", clientSecret: "clientSecret_example", sshPublickey: "sshPublickey_example", share: false, createDate: Date(), lastUpdate: Date(), show: false, showIndex: 123) // App | 应用对象 (optional)

// 更新应用
AppAPI.appPut(appKey: appKey, app: app) { (response, error) in
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
 **app** | [**App**](App.md) | 应用对象 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appTransfer**
```swift
    open class func appTransfer(appKey: String, projectId: Int64? = nil, completion: @escaping (_ data: AppApiResponse?, _ error: Error?) -> Void)
```

转移应用

将应用转移到另一个项目。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let projectId = 987 // Int64 | 目标项目ID (optional)

// 转移应用
AppAPI.appTransfer(appKey: appKey, projectId: projectId) { (response, error) in
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
 **projectId** | **Int64** | 目标项目ID | [optional] 

### Return type

[**AppApiResponse**](AppApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apps**
```swift
    open class func apps(projectId: Int64? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: AppListResultApiResponse?, _ error: Error?) -> Void)
```

应用列表

根据项目ID获取应用列表，支持分页。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let projectId = 987 // Int64 | 项目ID (optional)
let skip = 987 // Int | 跳过的记录数 (optional)
let take = 987 // Int | 获取的记录数 (optional)

// 应用列表
AppAPI.apps(projectId: projectId, skip: skip, take: take) { (response, error) in
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
 **projectId** | **Int64** | 项目ID | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] 
 **take** | **Int** | 获取的记录数 | [optional] 

### Return type

[**AppListResultApiResponse**](AppListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

