# AppSettingAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appServiceSettingGroup**](AppSettingAPI.md#appservicesettinggroup) | **GET** /AppSetting/{appKey}/Groups/{id} | 获取服务分组详情
[**appServiceSettingGroupDelete**](AppSettingAPI.md#appservicesettinggroupdelete) | **DELETE** /AppSetting/{appKey}/Groups/{id} | 删除服务分组
[**appServiceSettingGroupPost**](AppSettingAPI.md#appservicesettinggrouppost) | **POST** /AppSetting/{appKey}/Groups | 添加服务分组
[**appServiceSettingGroupPut**](AppSettingAPI.md#appservicesettinggroupput) | **PUT** /AppSetting/{appKey}/Groups/{id} | 更新服务分组
[**appServiceSettingGroups**](AppSettingAPI.md#appservicesettinggroups) | **GET** /AppSetting/{appKey}/Groups | 获取服务分组列表
[**appServiceSettingItem**](AppSettingAPI.md#appservicesettingitem) | **GET** /AppSetting/{appKey}/Items/{id} | 服务配置项详情
[**appServiceSettingItemDelete**](AppSettingAPI.md#appservicesettingitemdelete) | **DELETE** /AppSetting/{appKey}/Items/{id} | 删除服务配置项
[**appServiceSettingItemPost**](AppSettingAPI.md#appservicesettingitempost) | **POST** /AppSetting/{appKey}/Items | 添加服务配置项
[**appServiceSettingItemPut**](AppSettingAPI.md#appservicesettingitemput) | **PUT** /AppSetting/{appKey}/Items/{id} | 更新服务配置项
[**appServiceSettingItems**](AppSettingAPI.md#appservicesettingitems) | **GET** /AppSetting/{appKey}/Items | 服务配置项列表
[**appServiceSettingProvider**](AppSettingAPI.md#appservicesettingprovider) | **GET** /AppSetting/{appKey}/Providers/{id} | 获取服务商详情
[**appServiceSettingProviderDelete**](AppSettingAPI.md#appservicesettingproviderdelete) | **DELETE** /AppSetting/{appKey}/Providers/{id} | 删除服务商
[**appServiceSettingProviderPost**](AppSettingAPI.md#appservicesettingproviderpost) | **POST** /AppSetting/{appKey}/Providers | 添加服务商
[**appServiceSettingProviderPut**](AppSettingAPI.md#appservicesettingproviderput) | **PUT** /AppSetting/{appKey}/Providers/{id} | 更新服务商
[**appServiceSettingProviders**](AppSettingAPI.md#appservicesettingproviders) | **GET** /AppSetting/{appKey}/Providers | 获取服务商列表
[**appSetting**](AppSettingAPI.md#appsetting) | **GET** /AppSetting/{appKey}/{id} | 配置详情
[**appSettingDelete**](AppSettingAPI.md#appsettingdelete) | **DELETE** /AppSetting/{appKey}/{id} | 删除配置
[**appSettingPost**](AppSettingAPI.md#appsettingpost) | **POST** /AppSetting/{appKey} | 增加配置
[**appSettingPut**](AppSettingAPI.md#appsettingput) | **PUT** /AppSetting/{appKey}/{id} | 更新配置
[**appSettings**](AppSettingAPI.md#appsettings) | **GET** /AppSetting/{appKey} | 配置列表


# **appServiceSettingGroup**
```swift
    open class func appServiceSettingGroup(id: Int64, appKey: String, completion: @escaping (_ data: ServiceGroupApiResponse?, _ error: Error?) -> Void)
```

获取服务分组详情

根据服务分组ID获取服务分组详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务分组ID
let appKey = "appKey_example" // String | 

// 获取服务分组详情
AppSettingAPI.appServiceSettingGroup(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 服务分组ID | 
 **appKey** | **String** |  | 

### Return type

[**ServiceGroupApiResponse**](ServiceGroupApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingGroupDelete**
```swift
    open class func appServiceSettingGroupDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除服务分组

根据服务分组ID删除服务分组

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务分组ID
let appKey = "appKey_example" // String | 

// 删除服务分组
AppSettingAPI.appServiceSettingGroupDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 服务分组ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingGroupPost**
```swift
    open class func appServiceSettingGroupPost(appKey: String, serviceGroup: ServiceGroup? = nil, completion: @escaping (_ data: AppSettingGroupPostResultApiResponse?, _ error: Error?) -> Void)
```

添加服务分组

添加新的服务分组信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let serviceGroup = ServiceGroup(id: 123, providerID: 123, name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceGroup | 服务分组信息 (optional)

// 添加服务分组
AppSettingAPI.appServiceSettingGroupPost(appKey: appKey, serviceGroup: serviceGroup) { (response, error) in
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
 **serviceGroup** | [**ServiceGroup**](ServiceGroup.md) | 服务分组信息 | [optional] 

### Return type

[**AppSettingGroupPostResultApiResponse**](AppSettingGroupPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingGroupPut**
```swift
    open class func appServiceSettingGroupPut(id: Int64, appKey: String, serviceGroup: ServiceGroup? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新服务分组

根据服务分组ID更新服务分组信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务分组ID
let appKey = "appKey_example" // String | 
let serviceGroup = ServiceGroup(id: 123, providerID: 123, name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceGroup | 服务分组信息 (optional)

// 更新服务分组
AppSettingAPI.appServiceSettingGroupPut(id: id, appKey: appKey, serviceGroup: serviceGroup) { (response, error) in
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
 **id** | **Int64** | 服务分组ID | 
 **appKey** | **String** |  | 
 **serviceGroup** | [**ServiceGroup**](ServiceGroup.md) | 服务分组信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingGroups**
```swift
    open class func appServiceSettingGroups(appKey: String, providerId: Int64? = nil, showFlag: Bool? = nil, completion: @escaping (_ data: ServiceGroupListApiResponse?, _ error: Error?) -> Void)
```

获取服务分组列表

根据服务商ID和显示标志获取服务分组列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let providerId = 987 // Int64 | 服务商ID (optional)
let showFlag = true // Bool | 是否显示 (optional) (default to false)

// 获取服务分组列表
AppSettingAPI.appServiceSettingGroups(appKey: appKey, providerId: providerId, showFlag: showFlag) { (response, error) in
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
 **providerId** | **Int64** | 服务商ID | [optional] 
 **showFlag** | **Bool** | 是否显示 | [optional] [default to false]

### Return type

[**ServiceGroupListApiResponse**](ServiceGroupListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingItem**
```swift
    open class func appServiceSettingItem(id: Int64, appKey: String, completion: @escaping (_ data: ServiceItemApiResponse?, _ error: Error?) -> Void)
```

服务配置项详情

根据服务配置项ID获取服务配置项详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务配置项ID
let appKey = "appKey_example" // String | 

// 服务配置项详情
AppSettingAPI.appServiceSettingItem(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 服务配置项ID | 
 **appKey** | **String** |  | 

### Return type

[**ServiceItemApiResponse**](ServiceItemApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingItemDelete**
```swift
    open class func appServiceSettingItemDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除服务配置项

根据服务配置项ID删除服务配置项

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务配置项ID
let appKey = "appKey_example" // String | 

// 删除服务配置项
AppSettingAPI.appServiceSettingItemDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 服务配置项ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingItemPost**
```swift
    open class func appServiceSettingItemPost(appKey: String, serviceItem: ServiceItem? = nil, completion: @escaping (_ data: AppSettingItemPostResultApiResponse?, _ error: Error?) -> Void)
```

添加服务配置项

添加新的服务配置项信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let serviceItem = ServiceItem(id: 123, bizCode: "bizCode_example", providerCode: "providerCode_example", groupCode: "groupCode_example", name: "name_example", code: "code_example", valueType: "valueType_example", icon: "icon_example", valueDefaults: "valueDefaults_example", description: "description_example", tags: "tags_example", isSystem: false, show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceItem | 服务配置项信息 (optional)

// 添加服务配置项
AppSettingAPI.appServiceSettingItemPost(appKey: appKey, serviceItem: serviceItem) { (response, error) in
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
 **serviceItem** | [**ServiceItem**](ServiceItem.md) | 服务配置项信息 | [optional] 

### Return type

[**AppSettingItemPostResultApiResponse**](AppSettingItemPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingItemPut**
```swift
    open class func appServiceSettingItemPut(id: Int64, appKey: String, serviceItem: ServiceItem? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新服务配置项

根据服务配置项ID更新服务配置项信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务配置项ID
let appKey = "appKey_example" // String | 
let serviceItem = ServiceItem(id: 123, bizCode: "bizCode_example", providerCode: "providerCode_example", groupCode: "groupCode_example", name: "name_example", code: "code_example", valueType: "valueType_example", icon: "icon_example", valueDefaults: "valueDefaults_example", description: "description_example", tags: "tags_example", isSystem: false, show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceItem | 服务配置项信息 (optional)

// 更新服务配置项
AppSettingAPI.appServiceSettingItemPut(id: id, appKey: appKey, serviceItem: serviceItem) { (response, error) in
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
 **id** | **Int64** | 服务配置项ID | 
 **appKey** | **String** |  | 
 **serviceItem** | [**ServiceItem**](ServiceItem.md) | 服务配置项信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingItems**
```swift
    open class func appServiceSettingItems(appKey: String, bizCode: String? = nil, providerCode: String? = nil, groupCode: String? = nil, showFlag: Bool? = nil, completion: @escaping (_ data: ServiceItemListApiResponse?, _ error: Error?) -> Void)
```

服务配置项列表

根据业务代码、服务商代码、分组代码和显示标志获取服务配置项列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let bizCode = "bizCode_example" // String | 业务代码 (optional)
let providerCode = "providerCode_example" // String | 服务商代码 (optional)
let groupCode = "groupCode_example" // String | 分组代码 (optional)
let showFlag = true // Bool | 是否显示 (optional) (default to false)

// 服务配置项列表
AppSettingAPI.appServiceSettingItems(appKey: appKey, bizCode: bizCode, providerCode: providerCode, groupCode: groupCode, showFlag: showFlag) { (response, error) in
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
 **bizCode** | **String** | 业务代码 | [optional] 
 **providerCode** | **String** | 服务商代码 | [optional] 
 **groupCode** | **String** | 分组代码 | [optional] 
 **showFlag** | **Bool** | 是否显示 | [optional] [default to false]

### Return type

[**ServiceItemListApiResponse**](ServiceItemListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingProvider**
```swift
    open class func appServiceSettingProvider(id: Int64, appKey: String, completion: @escaping (_ data: ServiceProviderApiResponse?, _ error: Error?) -> Void)
```

获取服务商详情

根据服务商ID获取服务商详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务商ID
let appKey = "appKey_example" // String | 

// 获取服务商详情
AppSettingAPI.appServiceSettingProvider(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 服务商ID | 
 **appKey** | **String** |  | 

### Return type

[**ServiceProviderApiResponse**](ServiceProviderApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingProviderDelete**
```swift
    open class func appServiceSettingProviderDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除服务商

根据服务商ID删除服务商

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务商ID
let appKey = "appKey_example" // String | 

// 删除服务商
AppSettingAPI.appServiceSettingProviderDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 服务商ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingProviderPost**
```swift
    open class func appServiceSettingProviderPost(appKey: String, serviceProvider: ServiceProvider? = nil, completion: @escaping (_ data: AppSettingProviderPostResultApiResponse?, _ error: Error?) -> Void)
```

添加服务商

添加新的服务商信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let serviceProvider = ServiceProvider(id: 123, bizCode: "bizCode_example", name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", tags: "tags_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceProvider | 服务商信息 (optional)

// 添加服务商
AppSettingAPI.appServiceSettingProviderPost(appKey: appKey, serviceProvider: serviceProvider) { (response, error) in
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
 **serviceProvider** | [**ServiceProvider**](ServiceProvider.md) | 服务商信息 | [optional] 

### Return type

[**AppSettingProviderPostResultApiResponse**](AppSettingProviderPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingProviderPut**
```swift
    open class func appServiceSettingProviderPut(id: Int64, appKey: String, serviceProvider: ServiceProvider? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新服务商

根据服务商ID更新服务商信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务商ID
let appKey = "appKey_example" // String | 
let serviceProvider = ServiceProvider(id: 123, bizCode: "bizCode_example", name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", tags: "tags_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceProvider | 服务商信息 (optional)

// 更新服务商
AppSettingAPI.appServiceSettingProviderPut(id: id, appKey: appKey, serviceProvider: serviceProvider) { (response, error) in
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
 **id** | **Int64** | 服务商ID | 
 **appKey** | **String** |  | 
 **serviceProvider** | [**ServiceProvider**](ServiceProvider.md) | 服务商信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appServiceSettingProviders**
```swift
    open class func appServiceSettingProviders(appKey: String, bizCode: String? = nil, showFlag: Bool? = nil, completion: @escaping (_ data: ServiceProviderListApiResponse?, _ error: Error?) -> Void)
```

获取服务商列表

根据业务代码和显示标志获取服务商列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let bizCode = "bizCode_example" // String | 业务代码 (optional)
let showFlag = true // Bool | 是否显示 (optional) (default to false)

// 获取服务商列表
AppSettingAPI.appServiceSettingProviders(appKey: appKey, bizCode: bizCode, showFlag: showFlag) { (response, error) in
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
 **bizCode** | **String** | 业务代码 | [optional] 
 **showFlag** | **Bool** | 是否显示 | [optional] [default to false]

### Return type

[**ServiceProviderListApiResponse**](ServiceProviderListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appSetting**
```swift
    open class func appSetting(id: Int64, appKey: String, completion: @escaping (_ data: AppSettingApiResponse?, _ error: Error?) -> Void)
```

配置详情

根据配置ID获取配置详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置ID
let appKey = "appKey_example" // String | 

// 配置详情
AppSettingAPI.appSetting(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 配置ID | 
 **appKey** | **String** |  | 

### Return type

[**AppSettingApiResponse**](AppSettingApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appSettingDelete**
```swift
    open class func appSettingDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除配置

根据配置ID删除配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置ID
let appKey = "appKey_example" // String | 

// 删除配置
AppSettingAPI.appSettingDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 配置ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appSettingPost**
```swift
    open class func appSettingPost(appKey: String, appSetting: AppSetting? = nil, completion: @escaping (_ data: AppSettingSettingPostResultApiResponse?, _ error: Error?) -> Void)
```

增加配置

添加新的配置内容

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let appSetting = AppSetting(id: 123, providerCode: "providerCode_example", groupCode: "groupCode_example", code: "code_example", value: "value_example", tags: "tags_example", description: "description_example", frontendUsable: false, createDate: Date(), lastUpdate: Date()) // AppSetting | 配置内容 (optional)

// 增加配置
AppSettingAPI.appSettingPost(appKey: appKey, appSetting: appSetting) { (response, error) in
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
 **appSetting** | [**AppSetting**](AppSetting.md) | 配置内容 | [optional] 

### Return type

[**AppSettingSettingPostResultApiResponse**](AppSettingSettingPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appSettingPut**
```swift
    open class func appSettingPut(id: Int64, appKey: String, appSetting: AppSetting? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新配置

根据配置ID更新配置内容

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置ID
let appKey = "appKey_example" // String | 
let appSetting = AppSetting(id: 123, providerCode: "providerCode_example", groupCode: "groupCode_example", code: "code_example", value: "value_example", tags: "tags_example", description: "description_example", frontendUsable: false, createDate: Date(), lastUpdate: Date()) // AppSetting | 配置内容 (optional)

// 更新配置
AppSettingAPI.appSettingPut(id: id, appKey: appKey, appSetting: appSetting) { (response, error) in
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
 **id** | **Int64** | 配置ID | 
 **appKey** | **String** |  | 
 **appSetting** | [**AppSetting**](AppSetting.md) | 配置内容 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appSettings**
```swift
    open class func appSettings(appKey: String, providerCode: String? = nil, groupCode: String? = nil, tag: String? = nil, code: String? = nil, completion: @escaping (_ data: AppSettingListApiResponse?, _ error: Error?) -> Void)
```

配置列表

根据服务商代码、分组代码、标签和配置项代码获取配置列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let providerCode = "providerCode_example" // String | 服务商代码 (optional)
let groupCode = "groupCode_example" // String | 分组代码 (optional)
let tag = "tag_example" // String | 标签 (optional)
let code = "code_example" // String | 配置项代码 (optional)

// 配置列表
AppSettingAPI.appSettings(appKey: appKey, providerCode: providerCode, groupCode: groupCode, tag: tag, code: code) { (response, error) in
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
 **providerCode** | **String** | 服务商代码 | [optional] 
 **groupCode** | **String** | 分组代码 | [optional] 
 **tag** | **String** | 标签 | [optional] 
 **code** | **String** | 配置项代码 | [optional] 

### Return type

[**AppSettingListApiResponse**](AppSettingListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

