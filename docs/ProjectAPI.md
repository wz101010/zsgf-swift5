# ProjectAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project**](ProjectAPI.md#project) | **GET** /Project/{id} | 项目详情
[**projectDelete**](ProjectAPI.md#projectdelete) | **DELETE** /Project/{id} | 删除项目
[**projectPost**](ProjectAPI.md#projectpost) | **POST** /Project | 创建项目
[**projectPut**](ProjectAPI.md#projectput) | **PUT** /Project/{id} | 更新项目
[**projects**](ProjectAPI.md#projects) | **GET** /Project | 项目列表


# **project**
```swift
    open class func project(id: Int64, completion: @escaping (_ data: ProjectApiResponse?, _ error: Error?) -> Void)
```

项目详情

根据项目ID获取项目详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 

// 项目详情
ProjectAPI.project(id: id) { (response, error) in
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
 **id** | **Int64** |  | 

### Return type

[**ProjectApiResponse**](ProjectApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectDelete**
```swift
    open class func projectDelete(id: Int64, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除项目

根据项目ID删除项目

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 

// 删除项目
ProjectAPI.projectDelete(id: id) { (response, error) in
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
 **id** | **Int64** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectPost**
```swift
    open class func projectPost(project: Project? = nil, completion: @escaping (_ data: PostResultApiResponse?, _ error: Error?) -> Void)
```

创建项目

创建一个新项目

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let project = Project(id: 123, userID: 123, name: "name_example", logo: "logo_example", description: "description_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // Project |  (optional)

// 创建项目
ProjectAPI.projectPost(project: project) { (response, error) in
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
 **project** | [**Project**](Project.md) |  | [optional] 

### Return type

[**PostResultApiResponse**](PostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectPut**
```swift
    open class func projectPut(id: String, project: Project? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新项目

根据项目ID更新项目

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = "id_example" // String | 
let project = Project(id: 123, userID: 123, name: "name_example", logo: "logo_example", description: "description_example", show: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // Project |  (optional)

// 更新项目
ProjectAPI.projectPut(id: id, project: project) { (response, error) in
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
 **id** | **String** |  | 
 **project** | [**Project**](Project.md) |  | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projects**
```swift
    open class func projects(skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: ProjectListResultApiResponse?, _ error: Error?) -> Void)
```

项目列表

获取项目列表，支持分页

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let skip = 987 // Int |  (optional)
let take = 987 // Int |  (optional)

// 项目列表
ProjectAPI.projects(skip: skip, take: take) { (response, error) in
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
 **skip** | **Int** |  | [optional] 
 **take** | **Int** |  | [optional] 

### Return type

[**ProjectListResultApiResponse**](ProjectListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

