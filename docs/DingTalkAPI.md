# DingTalkAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dingTalkUserInfo**](DingTalkAPI.md#dingtalkuserinfo) | **GET** /DingTalk/{appKey}/UserInfo | 获取用户资料


# **dingTalkUserInfo**
```swift
    open class func dingTalkUserInfo(appKey: String, code: String? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

获取用户资料

根据钉钉用户授权码获取用户的详细资料。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let code = "code_example" // String | 钉钉用户授权码 (optional)

// 获取用户资料
DingTalkAPI.dingTalkUserInfo(appKey: appKey, code: code) { (response, error) in
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
 **code** | **String** | 钉钉用户授权码 | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

