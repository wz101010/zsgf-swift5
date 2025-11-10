# AppAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appInfo**](AppAPI.md#appinfo) | **GET** /App/{appKey}/Info | 应用详情


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

