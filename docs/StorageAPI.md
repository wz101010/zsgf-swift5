# StorageAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storageAggregate**](StorageAPI.md#storageaggregate) | **GET** /Storage/{appKey}/{table}/Aggregate | 聚合查询
[**storageDelete**](StorageAPI.md#storagedelete) | **DELETE** /Storage/{appKey}/{table}/{id} | 删除数据
[**storageDetail**](StorageAPI.md#storagedetail) | **GET** /Storage/{appKey}/{table}/{id} | 数据详情
[**storageList**](StorageAPI.md#storagelist) | **GET** /Storage/{appKey}/{table} | 查询数据
[**storagePost**](StorageAPI.md#storagepost) | **POST** /Storage/{appKey}/{table} | 添加数据
[**storagePut**](StorageAPI.md#storageput) | **PUT** /Storage/{appKey}/{table}/{id} | 更新数据


# **storageAggregate**
```swift
    open class func storageAggregate(table: String, appKey: String, pipeline: String? = nil, completion: @escaping (_ data: ObjectListApiResponse?, _ error: Error?) -> Void)
```

聚合查询

根据聚合管道查询指定表中的数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 
let pipeline = "pipeline_example" // String | 构建聚合查询 (optional)

// 聚合查询
StorageAPI.storageAggregate(table: table, appKey: appKey, pipeline: pipeline) { (response, error) in
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
 **table** | **String** | 表名称 | 
 **appKey** | **String** |  | 
 **pipeline** | **String** | 构建聚合查询 | [optional] 

### Return type

[**ObjectListApiResponse**](ObjectListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDelete**
```swift
    open class func storageDelete(table: String, id: String, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除数据

删除指定表中指定ID的数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let id = "id_example" // String | 数据ID
let appKey = "appKey_example" // String | 

// 删除数据
StorageAPI.storageDelete(table: table, id: id, appKey: appKey) { (response, error) in
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
 **table** | **String** | 表名称 | 
 **id** | **String** | 数据ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDetail**
```swift
    open class func storageDetail(table: String, id: String, appKey: String, project: String? = nil, completion: @escaping (_ data: ObjectApiResponse?, _ error: Error?) -> Void)
```

数据详情

获取指定表中指定ID的数据详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let id = "id_example" // String | 数据ID
let appKey = "appKey_example" // String | 
let project = "project_example" // String | json格式 (optional)

// 数据详情
StorageAPI.storageDetail(table: table, id: id, appKey: appKey, project: project) { (response, error) in
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
 **table** | **String** | 表名称 | 
 **id** | **String** | 数据ID | 
 **appKey** | **String** |  | 
 **project** | **String** | json格式 | [optional] 

### Return type

[**ObjectApiResponse**](ObjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageList**
```swift
    open class func storageList(table: String, appKey: String, filter: String? = nil, project: String? = nil, sort: String? = nil, startTime: Date? = nil, endTime: Date? = nil, explain: Bool? = nil, take: Int? = nil, skip: Int? = nil, completion: @escaping (_ data: StorageListResultApiResponse?, _ error: Error?) -> Void)
```

查询数据

根据条件查询指定表中的数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 
let filter = "filter_example" // String | 过滤，json格式 (optional)
let project = "project_example" // String | 字段映射，json格式 (optional)
let sort = "sort_example" // String | 排序，json格式 (optional)
let startTime = Date() // Date | 开始时间 (optional)
let endTime = Date() // Date | 结束时间 (optional)
let explain = true // Bool | 查看执行计划 (optional) (default to false)
let take = 987 // Int | 默认为10 (optional) (default to 10)
let skip = 987 // Int | 默认为0 (optional) (default to 0)

// 查询数据
StorageAPI.storageList(table: table, appKey: appKey, filter: filter, project: project, sort: sort, startTime: startTime, endTime: endTime, explain: explain, take: take, skip: skip) { (response, error) in
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
 **table** | **String** | 表名称 | 
 **appKey** | **String** |  | 
 **filter** | **String** | 过滤，json格式 | [optional] 
 **project** | **String** | 字段映射，json格式 | [optional] 
 **sort** | **String** | 排序，json格式 | [optional] 
 **startTime** | **Date** | 开始时间 | [optional] 
 **endTime** | **Date** | 结束时间 | [optional] 
 **explain** | **Bool** | 查看执行计划 | [optional] [default to false]
 **take** | **Int** | 默认为10 | [optional] [default to 10]
 **skip** | **Int** | 默认为0 | [optional] [default to 0]

### Return type

[**StorageListResultApiResponse**](StorageListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storagePost**
```swift
    open class func storagePost(table: String, appKey: String, requestBody: [AnyCodable], completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

添加数据

向指定表中添加数据，可以是单个json对象或json数组

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称（小写字母加数字,1-50位）
let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | json对象 / json数组

// 添加数据
StorageAPI.storagePost(table: table, appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **table** | **String** | 表名称（小写字母加数字,1-50位） | 
 **appKey** | **String** |  | 
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | json对象 / json数组 | 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storagePut**
```swift
    open class func storagePut(table: String, id: String, appKey: String, requestBody: [AnyCodable], replace: Bool? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新数据

更新指定表中指定ID的数据，可以选择全量更新或部分更新

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let id = "id_example" // String | 数据ID
let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | json格式
let replace = true // Bool | 是否为全量更新，默认为false (optional) (default to false)

// 更新数据
StorageAPI.storagePut(table: table, id: id, appKey: appKey, requestBody: requestBody, replace: replace) { (response, error) in
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
 **table** | **String** | 表名称 | 
 **id** | **String** | 数据ID | 
 **appKey** | **String** |  | 
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | json格式 | 
 **replace** | **Bool** | 是否为全量更新，默认为false | [optional] [default to false]

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

