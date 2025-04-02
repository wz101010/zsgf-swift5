# ServiceSettingAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviceSetting**](ServiceSettingAPI.md#servicesetting) | **GET** /ServiceSetting/{id} | 获取配置详情
[**serviceSettingDelete**](ServiceSettingAPI.md#servicesettingdelete) | **DELETE** /ServiceSetting/{id} | 删除配置
[**serviceSettingGroup**](ServiceSettingAPI.md#servicesettinggroup) | **GET** /ServiceSetting/Groups/{id} | 获取服务分组详情
[**serviceSettingGroupDelete**](ServiceSettingAPI.md#servicesettinggroupdelete) | **DELETE** /ServiceSetting/Groups/{id} | 删除服务分组
[**serviceSettingGroupPost**](ServiceSettingAPI.md#servicesettinggrouppost) | **POST** /ServiceSetting/Groups | 添加服务分组
[**serviceSettingGroupPut**](ServiceSettingAPI.md#servicesettinggroupput) | **PUT** /ServiceSetting/Groups/{id} | 更新服务分组
[**serviceSettingGroups**](ServiceSettingAPI.md#servicesettinggroups) | **GET** /ServiceSetting/Groups | 获取服务分组列表
[**serviceSettingItem**](ServiceSettingAPI.md#servicesettingitem) | **GET** /ServiceSetting/Items/{id} | 服务配置详情
[**serviceSettingItemDelete**](ServiceSettingAPI.md#servicesettingitemdelete) | **DELETE** /ServiceSetting/Items/{id} | 删除服务配置
[**serviceSettingItemPost**](ServiceSettingAPI.md#servicesettingitempost) | **POST** /ServiceSetting/Items | 添加服务配置
[**serviceSettingItemPut**](ServiceSettingAPI.md#servicesettingitemput) | **PUT** /ServiceSetting/Items/{id} | 更新服务配置
[**serviceSettingItems**](ServiceSettingAPI.md#servicesettingitems) | **GET** /ServiceSetting/Items | 服务配置列表
[**serviceSettingPost**](ServiceSettingAPI.md#servicesettingpost) | **POST** /ServiceSetting | 增加配置
[**serviceSettingProvider**](ServiceSettingAPI.md#servicesettingprovider) | **GET** /ServiceSetting/Providers/{id} | 获取服务商详情
[**serviceSettingProviderDelete**](ServiceSettingAPI.md#servicesettingproviderdelete) | **DELETE** /ServiceSetting/Providers/{id} | 删除服务商
[**serviceSettingProviderPost**](ServiceSettingAPI.md#servicesettingproviderpost) | **POST** /ServiceSetting/Providers | 添加服务商
[**serviceSettingProviderPut**](ServiceSettingAPI.md#servicesettingproviderput) | **PUT** /ServiceSetting/Providers/{id} | 更新服务商
[**serviceSettingProviders**](ServiceSettingAPI.md#servicesettingproviders) | **GET** /ServiceSetting/Providers | 获取服务商列表
[**serviceSettingPut**](ServiceSettingAPI.md#servicesettingput) | **PUT** /ServiceSetting/{id} | 更新配置
[**serviceSettings**](ServiceSettingAPI.md#servicesettings) | **GET** /ServiceSetting | 获取配置列表


# **serviceSetting**
```swift
    open class func serviceSetting(id: Int64, completion: @escaping (_ data: SettingsApiResponse?, _ error: Error?) -> Void)
```

获取配置详情

根据配置ID获取配置详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置ID

// 获取配置详情
ServiceSettingAPI.serviceSetting(id: id) { (response, error) in
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

### Return type

[**SettingsApiResponse**](SettingsApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingDelete**
```swift
    open class func serviceSettingDelete(id: Int64, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除配置

根据配置ID删除配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置ID

// 删除配置
ServiceSettingAPI.serviceSettingDelete(id: id) { (response, error) in
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

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingGroup**
```swift
    open class func serviceSettingGroup(id: Int64, completion: @escaping (_ data: ServiceGroupApiResponse?, _ error: Error?) -> Void)
```

获取服务分组详情

根据服务分组ID获取服务分组详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务分组ID

// 获取服务分组详情
ServiceSettingAPI.serviceSettingGroup(id: id) { (response, error) in
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

### Return type

[**ServiceGroupApiResponse**](ServiceGroupApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingGroupDelete**
```swift
    open class func serviceSettingGroupDelete(id: Int64, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除服务分组

根据服务分组ID删除服务分组

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务分组ID

// 删除服务分组
ServiceSettingAPI.serviceSettingGroupDelete(id: id) { (response, error) in
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

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingGroupPost**
```swift
    open class func serviceSettingGroupPost(serviceGroup: ServiceGroup? = nil, completion: @escaping (_ data: ServiceSettingGroupPostResultApiResponse?, _ error: Error?) -> Void)
```

添加服务分组

添加新的服务分组

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let serviceGroup = ServiceGroup(id: 123, providerID: 123, name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceGroup | 服务分组实体 (optional)

// 添加服务分组
ServiceSettingAPI.serviceSettingGroupPost(serviceGroup: serviceGroup) { (response, error) in
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
 **serviceGroup** | [**ServiceGroup**](ServiceGroup.md) | 服务分组实体 | [optional] 

### Return type

[**ServiceSettingGroupPostResultApiResponse**](ServiceSettingGroupPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingGroupPut**
```swift
    open class func serviceSettingGroupPut(id: Int64, serviceGroup: ServiceGroup? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新服务分组

根据服务分组ID更新服务分组信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务分组ID
let serviceGroup = ServiceGroup(id: 123, providerID: 123, name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceGroup | 服务分组实体 (optional)

// 更新服务分组
ServiceSettingAPI.serviceSettingGroupPut(id: id, serviceGroup: serviceGroup) { (response, error) in
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
 **serviceGroup** | [**ServiceGroup**](ServiceGroup.md) | 服务分组实体 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingGroups**
```swift
    open class func serviceSettingGroups(providerId: Int64? = nil, showFlag: Bool? = nil, completion: @escaping (_ data: ServiceGroupListApiResponse?, _ error: Error?) -> Void)
```

获取服务分组列表

根据服务商ID和显示标志获取服务分组列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let providerId = 987 // Int64 | 服务商ID (optional)
let showFlag = true // Bool | 是否显示 (optional) (default to false)

// 获取服务分组列表
ServiceSettingAPI.serviceSettingGroups(providerId: providerId, showFlag: showFlag) { (response, error) in
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

# **serviceSettingItem**
```swift
    open class func serviceSettingItem(id: Int64, completion: @escaping (_ data: ServiceItemApiResponse?, _ error: Error?) -> Void)
```

服务配置详情

根据服务配置ID获取服务配置详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务配置ID

// 服务配置详情
ServiceSettingAPI.serviceSettingItem(id: id) { (response, error) in
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
 **id** | **Int64** | 服务配置ID | 

### Return type

[**ServiceItemApiResponse**](ServiceItemApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingItemDelete**
```swift
    open class func serviceSettingItemDelete(id: Int64, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除服务配置

根据服务配置ID删除服务配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务配置ID

// 删除服务配置
ServiceSettingAPI.serviceSettingItemDelete(id: id) { (response, error) in
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
 **id** | **Int64** | 服务配置ID | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingItemPost**
```swift
    open class func serviceSettingItemPost(serviceItem: ServiceItem? = nil, completion: @escaping (_ data: ServiceSettingItemPostResultApiResponse?, _ error: Error?) -> Void)
```

添加服务配置

添加新的服务配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let serviceItem = ServiceItem(id: 123, bizCode: "bizCode_example", providerCode: "providerCode_example", groupCode: "groupCode_example", name: "name_example", code: "code_example", valueType: "valueType_example", icon: "icon_example", valueDefaults: "valueDefaults_example", description: "description_example", tags: "tags_example", isSystem: false, show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceItem | 服务配置实体 (optional)

// 添加服务配置
ServiceSettingAPI.serviceSettingItemPost(serviceItem: serviceItem) { (response, error) in
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
 **serviceItem** | [**ServiceItem**](ServiceItem.md) | 服务配置实体 | [optional] 

### Return type

[**ServiceSettingItemPostResultApiResponse**](ServiceSettingItemPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingItemPut**
```swift
    open class func serviceSettingItemPut(id: Int64, serviceItem: ServiceItem? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新服务配置

根据服务配置ID更新服务配置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务配置ID
let serviceItem = ServiceItem(id: 123, bizCode: "bizCode_example", providerCode: "providerCode_example", groupCode: "groupCode_example", name: "name_example", code: "code_example", valueType: "valueType_example", icon: "icon_example", valueDefaults: "valueDefaults_example", description: "description_example", tags: "tags_example", isSystem: false, show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceItem | 服务配置实体 (optional)

// 更新服务配置
ServiceSettingAPI.serviceSettingItemPut(id: id, serviceItem: serviceItem) { (response, error) in
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
 **id** | **Int64** | 服务配置ID | 
 **serviceItem** | [**ServiceItem**](ServiceItem.md) | 服务配置实体 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingItems**
```swift
    open class func serviceSettingItems(bizCode: String? = nil, providerCode: String? = nil, groupCode: String? = nil, showFlag: Bool? = nil, completion: @escaping (_ data: ServiceItemListApiResponse?, _ error: Error?) -> Void)
```

服务配置列表

根据业务代码、服务商代码、分组代码和显示标志获取服务配置列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let bizCode = "bizCode_example" // String | 业务代码 (optional)
let providerCode = "providerCode_example" // String | 服务商代码 (optional)
let groupCode = "groupCode_example" // String | 分组代码 (optional)
let showFlag = true // Bool | 是否显示 (optional) (default to false)

// 服务配置列表
ServiceSettingAPI.serviceSettingItems(bizCode: bizCode, providerCode: providerCode, groupCode: groupCode, showFlag: showFlag) { (response, error) in
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

# **serviceSettingPost**
```swift
    open class func serviceSettingPost(settings: Settings? = nil, completion: @escaping (_ data: ServiceSettingSettingPostResultApiResponse?, _ error: Error?) -> Void)
```

增加配置

添加新的配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let settings = Settings(id: 123, bizCode: "bizCode_example", bizIdentity: "bizIdentity_example", providerCode: "providerCode_example", groupCode: "groupCode_example", code: "code_example", value: "value_example", tags: "tags_example", description: "description_example", frontendUsable: false, createDate: Date(), lastUpdate: Date()) // Settings | 配置实体 (optional)

// 增加配置
ServiceSettingAPI.serviceSettingPost(settings: settings) { (response, error) in
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
 **settings** | [**Settings**](Settings.md) | 配置实体 | [optional] 

### Return type

[**ServiceSettingSettingPostResultApiResponse**](ServiceSettingSettingPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingProvider**
```swift
    open class func serviceSettingProvider(id: Int64, completion: @escaping (_ data: ServiceProviderApiResponse?, _ error: Error?) -> Void)
```

获取服务商详情

根据服务商ID获取服务商详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务商ID

// 获取服务商详情
ServiceSettingAPI.serviceSettingProvider(id: id) { (response, error) in
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

### Return type

[**ServiceProviderApiResponse**](ServiceProviderApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingProviderDelete**
```swift
    open class func serviceSettingProviderDelete(id: Int64, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除服务商

根据服务商ID删除服务商

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务商ID

// 删除服务商
ServiceSettingAPI.serviceSettingProviderDelete(id: id) { (response, error) in
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

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingProviderPost**
```swift
    open class func serviceSettingProviderPost(serviceProvider: ServiceProvider? = nil, completion: @escaping (_ data: ServiceSettingProviderPostResultApiResponse?, _ error: Error?) -> Void)
```

添加服务商

添加新的服务商

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let serviceProvider = ServiceProvider(id: 123, bizCode: "bizCode_example", name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", tags: "tags_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceProvider | 服务商实体 (optional)

// 添加服务商
ServiceSettingAPI.serviceSettingProviderPost(serviceProvider: serviceProvider) { (response, error) in
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
 **serviceProvider** | [**ServiceProvider**](ServiceProvider.md) | 服务商实体 | [optional] 

### Return type

[**ServiceSettingProviderPostResultApiResponse**](ServiceSettingProviderPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingProviderPut**
```swift
    open class func serviceSettingProviderPut(id: Int64, serviceProvider: ServiceProvider? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新服务商

根据服务商ID更新服务商信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 服务商ID
let serviceProvider = ServiceProvider(id: 123, bizCode: "bizCode_example", name: "name_example", code: "code_example", icon: "icon_example", description: "description_example", tags: "tags_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // ServiceProvider | 服务商实体 (optional)

// 更新服务商
ServiceSettingAPI.serviceSettingProviderPut(id: id, serviceProvider: serviceProvider) { (response, error) in
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
 **serviceProvider** | [**ServiceProvider**](ServiceProvider.md) | 服务商实体 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettingProviders**
```swift
    open class func serviceSettingProviders(bizCode: String? = nil, showFlag: Bool? = nil, completion: @escaping (_ data: ServiceProviderListApiResponse?, _ error: Error?) -> Void)
```

获取服务商列表

根据业务代码和显示标志获取服务商列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let bizCode = "bizCode_example" // String | 业务代码 (optional)
let showFlag = true // Bool | 是否显示 (optional) (default to false)

// 获取服务商列表
ServiceSettingAPI.serviceSettingProviders(bizCode: bizCode, showFlag: showFlag) { (response, error) in
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

# **serviceSettingPut**
```swift
    open class func serviceSettingPut(id: Int64, settings: Settings? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新配置

根据配置ID更新配置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 配置ID
let settings = Settings(id: 123, bizCode: "bizCode_example", bizIdentity: "bizIdentity_example", providerCode: "providerCode_example", groupCode: "groupCode_example", code: "code_example", value: "value_example", tags: "tags_example", description: "description_example", frontendUsable: false, createDate: Date(), lastUpdate: Date()) // Settings | 配置实体 (optional)

// 更新配置
ServiceSettingAPI.serviceSettingPut(id: id, settings: settings) { (response, error) in
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
 **settings** | [**Settings**](Settings.md) | 配置实体 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceSettings**
```swift
    open class func serviceSettings(bizCode: String, bizId: String, providerCode: String? = nil, groupCode: String? = nil, tag: String? = nil, code: String? = nil, completion: @escaping (_ data: SettingsListApiResponse?, _ error: Error?) -> Void)
```

获取配置列表

根据业务代码、业务标识、服务商代码、分组代码、标签和配置项代码获取配置列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let bizCode = "bizCode_example" // String | 业务代码
let bizId = "bizId_example" // String | 业务标识
let providerCode = "providerCode_example" // String | 服务商代码 (optional)
let groupCode = "groupCode_example" // String | 分组代码 (optional)
let tag = "tag_example" // String | 标签 (optional)
let code = "code_example" // String | 配置项代码 (optional)

// 获取配置列表
ServiceSettingAPI.serviceSettings(bizCode: bizCode, bizId: bizId, providerCode: providerCode, groupCode: groupCode, tag: tag, code: code) { (response, error) in
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
 **bizCode** | **String** | 业务代码 | 
 **bizId** | **String** | 业务标识 | 
 **providerCode** | **String** | 服务商代码 | [optional] 
 **groupCode** | **String** | 分组代码 | [optional] 
 **tag** | **String** | 标签 | [optional] 
 **code** | **String** | 配置项代码 | [optional] 

### Return type

[**SettingsListApiResponse**](SettingsListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

