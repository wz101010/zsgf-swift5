# StorageAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storageAggregate**](StorageAPI.md#storageaggregate) | **GET** /Storage/{appKey}/{table}/Aggregate | 聚合查询
[**storageBatchUpdate**](StorageAPI.md#storagebatchupdate) | **PUT** /Storage/{appKey}/{table}/batch-update | 批量更新指定条件的数据
[**storageClear**](StorageAPI.md#storageclear) | **DELETE** /Storage/{appKey}/{table}/Clear | 清空表数据
[**storageDelete**](StorageAPI.md#storagedelete) | **DELETE** /Storage/{appKey}/{table}/{id} | 删除数据
[**storageDeleteIndex**](StorageAPI.md#storagedeleteindex) | **DELETE** /Storage/{appKey}/{table}/indexes | 删除索引
[**storageDetail**](StorageAPI.md#storagedetail) | **GET** /Storage/{appKey}/{table}/{id} | 数据详情
[**storageExecuteFunction**](StorageAPI.md#storageexecutefunction) | **GET** /Storage/{appKey}/ExecuteFunction | 执行函数
[**storageExport**](StorageAPI.md#storageexport) | **GET** /Storage/{appKey}/{table}/Export | 导出数据
[**storageImport**](StorageAPI.md#storageimport) | **POST** /Storage/{appKey}/{table}/Import | 导入数据
[**storageIndexes**](StorageAPI.md#storageindexes) | **GET** /Storage/{appKey}/{table}/Indexes | 获取索引
[**storageList**](StorageAPI.md#storagelist) | **GET** /Storage/{appKey}/{table} | 查询数据
[**storagePost**](StorageAPI.md#storagepost) | **POST** /Storage/{appKey}/{table} | 添加数据
[**storagePostIndex**](StorageAPI.md#storagepostindex) | **POST** /Storage/{appKey}/{table}/indexes | 添加索引
[**storagePut**](StorageAPI.md#storageput) | **PUT** /Storage/{appKey}/{table}/{id} | 更新数据
[**storageRemove**](StorageAPI.md#storageremove) | **DELETE** /Storage/{appKey}/{table}/Remove | 删除表
[**storageStats**](StorageAPI.md#storagestats) | **GET** /Storage/{appKey}/{table}/Stats | 数据表统计
[**storageTables**](StorageAPI.md#storagetables) | **GET** /Storage/{appKey}/Tables | 获取数据表


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

# **storageBatchUpdate**
```swift
    open class func storageBatchUpdate(table: String, filter: String, appKey: String, requestBody: [AnyCodable], replace: Bool? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

批量更新指定条件的数据

批量更新指定表中符合条件的文档，可以动态指定查询条件和更新字段

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let filter = "filter_example" // String | 查询条件
let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 更新的字段
let replace = true // Bool | 是否为全量替换，默认为 false (optional) (default to false)

// 批量更新指定条件的数据
StorageAPI.storageBatchUpdate(table: table, filter: filter, appKey: appKey, requestBody: requestBody, replace: replace) { (response, error) in
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
 **filter** | **String** | 查询条件 | 
 **appKey** | **String** |  | 
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 更新的字段 | 
 **replace** | **Bool** | 是否为全量替换，默认为 false | [optional] [default to false]

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageClear**
```swift
    open class func storageClear(table: String, appKey: String, filter: String? = nil, completion: @escaping (_ data: Int64ApiResponse?, _ error: Error?) -> Void)
```

清空表数据

根据筛选条件清空指定表中的数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 
let filter = "filter_example" // String | 筛选条件，json格式 (optional)

// 清空表数据
StorageAPI.storageClear(table: table, appKey: appKey, filter: filter) { (response, error) in
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
 **filter** | **String** | 筛选条件，json格式 | [optional] 

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

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

# **storageDeleteIndex**
```swift
    open class func storageDeleteIndex(table: String, appKey: String, indexName: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除索引

删除指定表的指定索引

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 
let indexName = "indexName_example" // String | 索引名称 (optional)

// 删除索引
StorageAPI.storageDeleteIndex(table: table, appKey: appKey, indexName: indexName) { (response, error) in
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
 **indexName** | **String** | 索引名称 | [optional] 

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

# **storageExecuteFunction**
```swift
    open class func storageExecuteFunction(nonce: String, timestamp: Int64, signature: String, appKey: String, executeFunctionRequest: ExecuteFunctionRequest? = nil, completion: @escaping (_ data: ObjectApiResponse?, _ error: Error?) -> Void)
```

执行函数

执行指定的函数

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let nonce = "nonce_example" // String | 随机字符串
let timestamp = 987 // Int64 | 时间戳
let signature = "signature_example" // String | 签名
let appKey = "appKey_example" // String | 
let executeFunctionRequest = ExecuteFunctionRequest(functionKey: "functionKey_example") // ExecuteFunctionRequest | 函数请求参数 (optional)

// 执行函数
StorageAPI.storageExecuteFunction(nonce: nonce, timestamp: timestamp, signature: signature, appKey: appKey, executeFunctionRequest: executeFunctionRequest) { (response, error) in
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
 **nonce** | **String** | 随机字符串 | 
 **timestamp** | **Int64** | 时间戳 | 
 **signature** | **String** | 签名 | 
 **appKey** | **String** |  | 
 **executeFunctionRequest** | [**ExecuteFunctionRequest**](ExecuteFunctionRequest.md) | 函数请求参数 | [optional] 

### Return type

[**ObjectApiResponse**](ObjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageExport**
```swift
    open class func storageExport(table: String, appKey: String, filter: String? = nil, startTime: Date? = nil, endTime: Date? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

导出数据

根据筛选条件导出指定表中的数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 
let filter = "filter_example" // String | 筛选条件，json格式 (optional)
let startTime = Date() // Date | 开始时间 (optional)
let endTime = Date() // Date | 结束时间 (optional)

// 导出数据
StorageAPI.storageExport(table: table, appKey: appKey, filter: filter, startTime: startTime, endTime: endTime) { (response, error) in
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
 **filter** | **String** | 筛选条件，json格式 | [optional] 
 **startTime** | **Date** | 开始时间 | [optional] 
 **endTime** | **Date** | 结束时间 | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageImport**
```swift
    open class func storageImport(table: String, appKey: String, file: URL? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

导入数据

从文件导入数据到指定表中

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 
let file = URL(string: "https://example.com")! // URL | 导入的文件 (optional)

// 导入数据
StorageAPI.storageImport(table: table, appKey: appKey, file: file) { (response, error) in
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
 **file** | **URL** | 导入的文件 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageIndexes**
```swift
    open class func storageIndexes(table: String, appKey: String, completion: @escaping (_ data: ObjectListApiResponse?, _ error: Error?) -> Void)
```

获取索引

获取指定表的索引列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 

// 获取索引
StorageAPI.storageIndexes(table: table, appKey: appKey) { (response, error) in
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

### Return type

[**ObjectListApiResponse**](ObjectListApiResponse.md)

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

# **storagePostIndex**
```swift
    open class func storagePostIndex(table: String, appKey: String, postIndexRequest: PostIndexRequest? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

添加索引

为指定表添加索引

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称（小写字母加数字,1-50位）
let appKey = "appKey_example" // String | 
let postIndexRequest = PostIndexRequest(model: "TODO", options: "TODO") // PostIndexRequest | json对象 / json数组 (optional)

// 添加索引
StorageAPI.storagePostIndex(table: table, appKey: appKey, postIndexRequest: postIndexRequest) { (response, error) in
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
 **postIndexRequest** | [**PostIndexRequest**](PostIndexRequest.md) | json对象 / json数组 | [optional] 

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

# **storageRemove**
```swift
    open class func storageRemove(table: String, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除表

删除指定表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 

// 删除表
StorageAPI.storageRemove(table: table, appKey: appKey) { (response, error) in
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

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageStats**
```swift
    open class func storageStats(table: String, appKey: String, completion: @escaping (_ data: ObjectApiResponse?, _ error: Error?) -> Void)
```

数据表统计

获取指定表的数据统计信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let table = "table_example" // String | 表名称
let appKey = "appKey_example" // String | 

// 数据表统计
StorageAPI.storageStats(table: table, appKey: appKey) { (response, error) in
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

### Return type

[**ObjectApiResponse**](ObjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageTables**
```swift
    open class func storageTables(appKey: String, completion: @escaping (_ data: StringListApiResponse?, _ error: Error?) -> Void)
```

获取数据表

获取当前应用的所有数据表名称

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 获取数据表
StorageAPI.storageTables(appKey: appKey) { (response, error) in
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

[**StringListApiResponse**](StringListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

