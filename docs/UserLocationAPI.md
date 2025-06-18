# UserLocationAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userLocation**](UserLocationAPI.md#userlocation) | **GET** /UserLocation/{appKey}/{id} | 获取位置详情
[**userLocationDelete**](UserLocationAPI.md#userlocationdelete) | **DELETE** /UserLocation/{appKey}/{id} | 删除位置
[**userLocationPost**](UserLocationAPI.md#userlocationpost) | **POST** /UserLocation/{appKey} | 添加位置
[**userLocationPut**](UserLocationAPI.md#userlocationput) | **PUT** /UserLocation/{appKey}/{id} | 更新位置
[**userLocations**](UserLocationAPI.md#userlocations) | **GET** /UserLocation/{appKey} | 获取位置列表


# **userLocation**
```swift
    open class func userLocation(id: Int64, appKey: String, completion: @escaping (_ data: GeoLocationModelApiResponse?, _ error: Error?) -> Void)
```

获取位置详情

根据位置ID获取位置详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 位置ID
let appKey = "appKey_example" // String | 

// 获取位置详情
UserLocationAPI.userLocation(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 位置ID | 
 **appKey** | **String** |  | 

### Return type

[**GeoLocationModelApiResponse**](GeoLocationModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocationDelete**
```swift
    open class func userLocationDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除位置

根据位置ID删除位置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 位置ID
let appKey = "appKey_example" // String | 

// 删除位置
UserLocationAPI.userLocationDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 位置ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocationPost**
```swift
    open class func userLocationPost(appKey: String, geoLocationModel: GeoLocationModel? = nil, completion: @escaping (_ data: UserLocationPostResultApiResponse?, _ error: Error?) -> Void)
```

添加位置

添加新的位置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let geoLocationModel = GeoLocationModel(locationName: "locationName_example", latitude: 123, longitude: 123, locationType: "locationType_example", recipientName: "recipientName_example", phoneNumber: "phoneNumber_example", email: "email_example", country: "country_example", state: "state_example", city: "city_example", district: "district_example", street: "street_example", zipCode: "zipCode_example", address: "address_example", mapType: "mapType_example", remark: "remark_example", tags: "tags_example", enable: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // GeoLocationModel | 位置信息 (optional)

// 添加位置
UserLocationAPI.userLocationPost(appKey: appKey, geoLocationModel: geoLocationModel) { (response, error) in
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
 **geoLocationModel** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] 

### Return type

[**UserLocationPostResultApiResponse**](UserLocationPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocationPut**
```swift
    open class func userLocationPut(id: Int64, appKey: String, geoLocationModel: GeoLocationModel? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新位置

此方法用于更新指定位置ID的位置信息。如果位置不存在，则创建一个新的位置。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 位置ID
let appKey = "appKey_example" // String | 
let geoLocationModel = GeoLocationModel(locationName: "locationName_example", latitude: 123, longitude: 123, locationType: "locationType_example", recipientName: "recipientName_example", phoneNumber: "phoneNumber_example", email: "email_example", country: "country_example", state: "state_example", city: "city_example", district: "district_example", street: "street_example", zipCode: "zipCode_example", address: "address_example", mapType: "mapType_example", remark: "remark_example", tags: "tags_example", enable: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // GeoLocationModel | 位置信息 (optional)

// 更新位置
UserLocationAPI.userLocationPut(id: id, appKey: appKey, geoLocationModel: geoLocationModel) { (response, error) in
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
 **id** | **Int64** | 位置ID | 
 **appKey** | **String** |  | 
 **geoLocationModel** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocations**
```swift
    open class func userLocations(appKey: String, tag: String? = nil, type: String? = nil, x: Double? = nil, y: Double? = nil, sphere: Int64? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserLocationsResultApiResponse?, _ error: Error?) -> Void)
```

获取位置列表

根据条件获取位置列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let tag = "tag_example" // String | 标签 (optional)
let type = "type_example" // String | 分类 (optional)
let x = 987 // Double | 纬度 (optional)
let y = 987 // Double | 经度 (optional)
let sphere = 987 // Int64 | 附近距离，单位：米 (optional)
let skip = 987 // Int | 跳过的记录数 (optional)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 获取位置列表
UserLocationAPI.userLocations(appKey: appKey, tag: tag, type: type, x: x, y: y, sphere: sphere, skip: skip, take: take) { (response, error) in
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
 **tag** | **String** | 标签 | [optional] 
 **type** | **String** | 分类 | [optional] 
 **x** | **Double** | 纬度 | [optional] 
 **y** | **Double** | 经度 | [optional] 
 **sphere** | **Int64** | 附近距离，单位：米 | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] 
 **take** | **Int** | 获取的记录数 | [optional] [default to 10]

### Return type

[**UserLocationsResultApiResponse**](UserLocationsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

