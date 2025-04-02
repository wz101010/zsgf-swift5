# SystemFileAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**systemFileCreateFolder**](SystemFileAPI.md#systemfilecreatefolder) | **POST** /SystemFile/CreateFolder | 创建文件夹
[**systemFileDelete**](SystemFileAPI.md#systemfiledelete) | **DELETE** /SystemFile | 删除文件
[**systemFileRename**](SystemFileAPI.md#systemfilerename) | **POST** /SystemFile/Rename | 重命名文件
[**systemFileUpload**](SystemFileAPI.md#systemfileupload) | **POST** /SystemFile | 上传文件
[**systemFiles**](SystemFileAPI.md#systemfiles) | **GET** /SystemFile | 获取文件列表


# **systemFileCreateFolder**
```swift
    open class func systemFileCreateFolder(path: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

创建文件夹

根据指定路径创建文件夹

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let path = "path_example" // String | 文件夹路径 (optional)

// 创建文件夹
SystemFileAPI.systemFileCreateFolder(path: path) { (response, error) in
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
 **path** | **String** | 文件夹路径 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **systemFileDelete**
```swift
    open class func systemFileDelete(path: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除文件

根据指定路径删除文件

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let path = "path_example" // String | 文件路径 (optional)

// 删除文件
SystemFileAPI.systemFileDelete(path: path) { (response, error) in
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
 **path** | **String** | 文件路径 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **systemFileRename**
```swift
    open class func systemFileRename(sourceName: String? = nil, destName: String? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

重命名文件

根据指定的源文件名和目标文件名重命名文件

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let sourceName = "sourceName_example" // String | 源文件名 (optional)
let destName = "destName_example" // String | 目标文件名 (optional)

// 重命名文件
SystemFileAPI.systemFileRename(sourceName: sourceName, destName: destName) { (response, error) in
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
 **sourceName** | **String** | 源文件名 | [optional] 
 **destName** | **String** | 目标文件名 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **systemFileUpload**
```swift
    open class func systemFileUpload(path: String? = nil, file: URL? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

上传文件

根据指定路径上传文件

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let path = "path_example" // String | 上传的路径 (optional)
let file = URL(string: "https://example.com")! // URL | 上传的文件 (optional)

// 上传文件
SystemFileAPI.systemFileUpload(path: path, file: file) { (response, error) in
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
 **path** | **String** | 上传的路径 | [optional] 
 **file** | **URL** | 上传的文件 | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **systemFiles**
```swift
    open class func systemFiles(path: String? = nil, completion: @escaping (_ data: SystemFileListResultApiResponse?, _ error: Error?) -> Void)
```

获取文件列表

根据指定路径获取文件列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let path = "path_example" // String | 文件路径 (optional)

// 获取文件列表
SystemFileAPI.systemFiles(path: path) { (response, error) in
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
 **path** | **String** | 文件路径 | [optional] 

### Return type

[**SystemFileListResultApiResponse**](SystemFileListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

