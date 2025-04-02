# WechatAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wechatDecrypt**](WechatAPI.md#wechatdecrypt) | **GET** /Wechat/{appKey}/Decrypt | 小程序-解密数据
[**wechatGenerateScheme**](WechatAPI.md#wechatgeneratescheme) | **POST** /Wechat/{appKey}/GenerateScheme | 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)
[**wechatJSCode2Session**](WechatAPI.md#wechatjscode2session) | **GET** /Wechat/{appKey}/JSCode2Session | 小程序-登录凭证校验
[**wechatJSConfig**](WechatAPI.md#wechatjsconfig) | **GET** /Wechat/{appKey}/JSConfig | 公众号H5-JS SDK Config
[**wechatSubscribeMSG**](WechatAPI.md#wechatsubscribemsg) | **POST** /Wechat/{appKey}/SubscribeMSG | 公众号H5-发送一次性订阅消息
[**wechatSubscribeSend**](WechatAPI.md#wechatsubscribesend) | **POST** /Wechat/{appKey}/SubscribeSend | 小程序-发送订阅消息
[**wechatUrlLinkGenerate**](WechatAPI.md#wechaturllinkgenerate) | **POST** /Wechat/{appKey}/UrlLinkGenerate | 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)
[**wechatUserInfo**](WechatAPI.md#wechatuserinfo) | **GET** /Wechat/{appKey}/UserInfo | 公众号H5-获取用户UnionID
[**wechatWXACodeGet**](WechatAPI.md#wechatwxacodeget) | **POST** /Wechat/{appKey}/WXACodeGet | 小程序-获取小程序码
[**wechatWXACodeGetUnlimited**](WechatAPI.md#wechatwxacodegetunlimited) | **POST** /Wechat/{appKey}/WXACodeGetUnlimited | 小程序-获取小程序码(无限制)


# **wechatDecrypt**
```swift
    open class func wechatDecrypt(appKey: String, encryptedData: String? = nil, iv: String? = nil, sessionKey: String? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

小程序-解密数据

解密小程序加密数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let encryptedData = "encryptedData_example" // String | 加密的数据 (optional)
let iv = "iv_example" // String | 加密算法的初始向量 (optional)
let sessionKey = "sessionKey_example" // String | 会话密钥 (optional)

// 小程序-解密数据
WechatAPI.wechatDecrypt(appKey: appKey, encryptedData: encryptedData, iv: iv, sessionKey: sessionKey) { (response, error) in
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
 **encryptedData** | **String** | 加密的数据 | [optional] 
 **iv** | **String** | 加密算法的初始向量 | [optional] 
 **sessionKey** | **String** | 会话密钥 | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatGenerateScheme**
```swift
    open class func wechatGenerateScheme(appKey: String, body: AnyCodable? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)

生成小程序的scheme码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let body =  // AnyCodable | scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html (optional)

// 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)
WechatAPI.wechatGenerateScheme(appKey: appKey, body: body) { (response, error) in
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
 **body** | **AnyCodable** | scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatJSCode2Session**
```swift
    open class func wechatJSCode2Session(appKey: String, jsCode: String? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

小程序-登录凭证校验

校验小程序登录凭证

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let jsCode = "jsCode_example" // String | 登录凭证，开发参考：https://dwz.cn/icNajFh7 (optional)

// 小程序-登录凭证校验
WechatAPI.wechatJSCode2Session(appKey: appKey, jsCode: jsCode) { (response, error) in
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
 **jsCode** | **String** | 登录凭证，开发参考：https://dwz.cn/icNajFh7 | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatJSConfig**
```swift
    open class func wechatJSConfig(appKey: String, url: String? = nil, completion: @escaping (_ data: WechatJSConfigResultApiResponse?, _ error: Error?) -> Void)
```

公众号H5-JS SDK Config

获取公众号H5的JS SDK配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let url = "url_example" // String | 当前网页的URL (optional)

// 公众号H5-JS SDK Config
WechatAPI.wechatJSConfig(appKey: appKey, url: url) { (response, error) in
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
 **url** | **String** | 当前网页的URL | [optional] 

### Return type

[**WechatJSConfigResultApiResponse**](WechatJSConfigResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatSubscribeMSG**
```swift
    open class func wechatSubscribeMSG(appKey: String, body: AnyCodable? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

公众号H5-发送一次性订阅消息

发送公众号H5一次性订阅消息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let body =  // AnyCodable | 订阅消息数据，开发参考：https://dwz.cn/IXptek5n (optional)

// 公众号H5-发送一次性订阅消息
WechatAPI.wechatSubscribeMSG(appKey: appKey, body: body) { (response, error) in
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
 **body** | **AnyCodable** | 订阅消息数据，开发参考：https://dwz.cn/IXptek5n | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatSubscribeSend**
```swift
    open class func wechatSubscribeSend(appKey: String, body: AnyCodable? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

小程序-发送订阅消息

发送小程序订阅消息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let body =  // AnyCodable | 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp (optional)

// 小程序-发送订阅消息
WechatAPI.wechatSubscribeSend(appKey: appKey, body: body) { (response, error) in
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
 **body** | **AnyCodable** | 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatUrlLinkGenerate**
```swift
    open class func wechatUrlLinkGenerate(appKey: String, body: AnyCodable? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)

生成小程序的网页跳转地址

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let body =  // AnyCodable | 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html (optional)

// 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)
WechatAPI.wechatUrlLinkGenerate(appKey: appKey, body: body) { (response, error) in
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
 **body** | **AnyCodable** | 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatUserInfo**
```swift
    open class func wechatUserInfo(appKey: String, openid: String? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

公众号H5-获取用户UnionID

获取公众号H5用户的UnionID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let openid = "openid_example" // String | 用户的OpenID (optional)

// 公众号H5-获取用户UnionID
WechatAPI.wechatUserInfo(appKey: appKey, openid: openid) { (response, error) in
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
 **openid** | **String** | 用户的OpenID | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatWXACodeGet**
```swift
    open class func wechatWXACodeGet(appKey: String, body: AnyCodable? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

小程序-获取小程序码

获取小程序码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let body =  // AnyCodable | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html (optional)

// 小程序-获取小程序码
WechatAPI.wechatWXACodeGet(appKey: appKey, body: body) { (response, error) in
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
 **body** | **AnyCodable** | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: image/jpeg, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatWXACodeGetUnlimited**
```swift
    open class func wechatWXACodeGetUnlimited(appKey: String, body: AnyCodable? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

小程序-获取小程序码(无限制)

获取无限制的小程序码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let body =  // AnyCodable | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html (optional)

// 小程序-获取小程序码(无限制)
WechatAPI.wechatWXACodeGetUnlimited(appKey: appKey, body: body) { (response, error) in
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
 **body** | **AnyCodable** | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: image/jpeg, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

