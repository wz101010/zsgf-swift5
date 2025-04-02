# FileAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileCreateFolder**](FileAPI.md#filecreatefolder) | **POST** /File/{appKey}/CreateFolder | 创建文件夹
[**fileDelete**](FileAPI.md#filedelete) | **DELETE** /File/{appKey} | 删除文件或文件夹
[**fileRename**](FileAPI.md#filerename) | **POST** /File/{appKey}/Rename | 重命名文件或文件夹
[**fileUpload**](FileAPI.md#fileupload) | **POST** /File/{appKey}/Upload | 上传文件
[**files**](FileAPI.md#files) | **GET** /File/{appKey} | 获取文件列表


# **fileCreateFolder**
```swift
    open class func fileCreateFolder(appKey: String, path: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

创建文件夹

在指定路径创建文件夹

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let path = "path_example" // String | 文件夹路径 (optional)

// 创建文件夹
FileAPI.fileCreateFolder(appKey: appKey, path: path) { (response, error) in
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
 **path** | **String** | 文件夹路径 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileDelete**
```swift
    open class func fileDelete(appKey: String, path: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除文件或文件夹

根据指定路径删除文件或文件夹

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let path = "path_example" // String | 文件或文件夹路径 (optional)

// 删除文件或文件夹
FileAPI.fileDelete(appKey: appKey, path: path) { (response, error) in
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
 **path** | **String** | 文件或文件夹路径 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileRename**
```swift
    open class func fileRename(appKey: String, sourceName: String? = nil, destName: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

重命名文件或文件夹

将指定的文件或文件夹重命名

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let sourceName = "sourceName_example" // String | 原文件或文件夹名称 (optional)
let destName = "destName_example" // String | 新文件或文件夹名称 (optional)

// 重命名文件或文件夹
FileAPI.fileRename(appKey: appKey, sourceName: sourceName, destName: destName) { (response, error) in
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
 **sourceName** | **String** | 原文件或文件夹名称 | [optional] 
 **destName** | **String** | 新文件或文件夹名称 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUpload**
```swift
    open class func fileUpload(appKey: String, path: String? = nil, file: URL? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

上传文件

将文件上传到指定路径

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let path = "path_example" // String | 文件夹路径 (optional)
let file = URL(string: "https://example.com")! // URL | 上传的文件 (optional)

// 上传文件
FileAPI.fileUpload(appKey: appKey, path: path, file: file) { (response, error) in
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
 **path** | **String** | 文件夹路径 | [optional] 
 **file** | **URL** | 上传的文件 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **files**
```swift
    open class func files(appKey: String, path: String? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: FileListResultApiResponse?, _ error: Error?) -> Void)
```

获取文件列表

根据指定路径获取文件和文件夹列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let path = "path_example" // String | 文件路径 (optional)
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 100)

// 获取文件列表
FileAPI.files(appKey: appKey, path: path, skip: skip, take: take) { (response, error) in
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
 **path** | **String** | 文件路径 | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] [default to 0]
 **take** | **Int** | 获取的记录数 | [optional] [default to 100]

### Return type

[**FileListResultApiResponse**](FileListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

