# WechatAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmQRCodeLogin**](WechatAPI.md#confirmqrcodelogin) | **POST** /Wechat/{appKey}/QR-Auth/Confirm-Login | 确认二维码登录请求
[**confirmQRCodeRegistration**](WechatAPI.md#confirmqrcoderegistration) | **POST** /Wechat/{appKey}/QR-Auth/Confirm-Register | 确认二维码注册请求
[**initiateQRAuthSession**](WechatAPI.md#initiateqrauthsession) | **POST** /Wechat/{appKey}/QR-Auth/Initiate | 初始化二维码认证会话
[**scanQRCodeForAuth**](WechatAPI.md#scanqrcodeforauth) | **POST** /Wechat/{appKey}/QR-Auth/Scan | 验证二维码扫描结果
[**wechatDecrypt**](WechatAPI.md#wechatdecrypt) | **GET** /Wechat/{appKey}/Decrypt | 解密小程序用户数据
[**wechatGenerateScheme**](WechatAPI.md#wechatgeneratescheme) | **POST** /Wechat/{appKey}/GenerateScheme | 生成小程序Scheme码
[**wechatJSCode2Session**](WechatAPI.md#wechatjscode2session) | **GET** /Wechat/{appKey}/JSCode2Session | 校验小程序登录状态
[**wechatJSConfig**](WechatAPI.md#wechatjsconfig) | **GET** /Wechat/{appKey}/JSConfig | 配置公众号JS SDK
[**wechatMsgSecCheck**](WechatAPI.md#wechatmsgseccheck) | **POST** /Wechat/{appKey}/MsgSecCheck | 小程序内容安全检测
[**wechatSubscribeMSG**](WechatAPI.md#wechatsubscribemsg) | **POST** /Wechat/{appKey}/SubscribeMSG | 发送公众号一次性订阅消息
[**wechatSubscribeSend**](WechatAPI.md#wechatsubscribesend) | **POST** /Wechat/{appKey}/SubscribeSend | 发送小程序订阅消息
[**wechatUrlLinkGenerate**](WechatAPI.md#wechaturllinkgenerate) | **POST** /Wechat/{appKey}/UrlLinkGenerate | 生成小程序URL跳转链接
[**wechatUserInfo**](WechatAPI.md#wechatuserinfo) | **GET** /Wechat/{appKey}/UserInfo | 获取公众号H5 UnionID
[**wechatWXACodeGet**](WechatAPI.md#wechatwxacodeget) | **POST** /Wechat/{appKey}/WXACodeGet | 获取小程序码（普通）
[**wechatWXACodeGetUnlimited**](WechatAPI.md#wechatwxacodegetunlimited) | **POST** /Wechat/{appKey}/WXACodeGetUnlimited | 获取小程序码（无限制）


# **confirmQRCodeLogin**
```swift
    open class func confirmQRCodeLogin(appKey: String, qRCodeSignInRequest: QRCodeSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

确认二维码登录请求

微信小程序用户确认二维码登录并获取访问令牌

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodeSignInRequest = QRCodeSignInRequest(signInKey: 123) // QRCodeSignInRequest | 登录确认请求参数 (optional)

// 确认二维码登录请求
WechatAPI.confirmQRCodeLogin(appKey: appKey, qRCodeSignInRequest: qRCodeSignInRequest) { (response, error) in
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
 **qRCodeSignInRequest** | [**QRCodeSignInRequest**](QRCodeSignInRequest.md) | 登录确认请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmQRCodeRegistration**
```swift
    open class func confirmQRCodeRegistration(appKey: String, qRCodeSignUpRequest: QRCodeSignUpRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

确认二维码注册请求

微信小程序用户通过二维码完成注册并获取访问令牌

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodeSignUpRequest = QRCodeSignUpRequest(signInKey: 123, unionID: "unionID_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example", email: "email_example", emailCode: "emailCode_example", phone: "phone_example", phoneCode: "phoneCode_example") // QRCodeSignUpRequest | 注册确认请求参数 (optional)

// 确认二维码注册请求
WechatAPI.confirmQRCodeRegistration(appKey: appKey, qRCodeSignUpRequest: qRCodeSignUpRequest) { (response, error) in
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
 **qRCodeSignUpRequest** | [**QRCodeSignUpRequest**](QRCodeSignUpRequest.md) | 注册确认请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateQRAuthSession**
```swift
    open class func initiateQRAuthSession(appKey: String, qRCodePreSignInRequest: QRCodePreSignInRequest? = nil, completion: @escaping (_ data: Int64ApiResponse?, _ error: Error?) -> Void)
```

初始化二维码认证会话

创建用于微信小程序扫码登录/注册的认证会话

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodePreSignInRequest = QRCodePreSignInRequest(scopes: "scopes_example", remark: "remark_example", scheme: "scheme_example") // QRCodePreSignInRequest | 认证会话初始化请求参数 (optional)

// 初始化二维码认证会话
WechatAPI.initiateQRAuthSession(appKey: appKey, qRCodePreSignInRequest: qRCodePreSignInRequest) { (response, error) in
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
 **qRCodePreSignInRequest** | [**QRCodePreSignInRequest**](QRCodePreSignInRequest.md) | 认证会话初始化请求参数 | [optional] 

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scanQRCodeForAuth**
```swift
    open class func scanQRCodeForAuth(appKey: String, qRCodeScanRequest: QRCodeScanRequest? = nil, completion: @escaping (_ data: UserQRCodeScanResultApiResponse?, _ error: Error?) -> Void)
```

验证二维码扫描结果

微信小程序扫描二维码并获取应用授权信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodeScanRequest = QRCodeScanRequest(signInKey: 123) // QRCodeScanRequest | 二维码扫描请求参数 (optional)

// 验证二维码扫描结果
WechatAPI.scanQRCodeForAuth(appKey: appKey, qRCodeScanRequest: qRCodeScanRequest) { (response, error) in
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
 **qRCodeScanRequest** | [**QRCodeScanRequest**](QRCodeScanRequest.md) | 二维码扫描请求参数 | [optional] 

### Return type

[**UserQRCodeScanResultApiResponse**](UserQRCodeScanResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatDecrypt**
```swift
    open class func wechatDecrypt(appKey: String, encryptedData: String? = nil, iv: String? = nil, sessionKey: String? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

解密小程序用户数据

解密小程序加密数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let encryptedData = "encryptedData_example" // String | 加密的数据 (optional)
let iv = "iv_example" // String | 加密算法的初始向量 (optional)
let sessionKey = "sessionKey_example" // String | 会话密钥 (optional)

// 解密小程序用户数据
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
    open class func wechatGenerateScheme(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

生成小程序Scheme码

生成小程序的scheme码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html (optional)

// 生成小程序Scheme码
WechatAPI.wechatGenerateScheme(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | scheme码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/qrcode-link/url-scheme/generateScheme.html | [optional] 

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

校验小程序登录状态

校验小程序登录凭证

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let jsCode = "jsCode_example" // String | 登录凭证，开发参考：https://dwz.cn/icNajFh7 (optional)

// 校验小程序登录状态
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

配置公众号JS SDK

获取公众号H5的JS SDK配置

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let url = "url_example" // String | 当前网页的URL (optional)

// 配置公众号JS SDK
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

# **wechatMsgSecCheck**
```swift
    open class func wechatMsgSecCheck(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

小程序内容安全检测

检测消息内容是否含有违法违规信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 消息内容数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/sec-center/sec-check/msgSecCheck.html (optional)

// 小程序内容安全检测
WechatAPI.wechatMsgSecCheck(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 消息内容数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/OpenApiDoc/sec-center/sec-check/msgSecCheck.html | [optional] 

### Return type

**AnyCodable**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatSubscribeMSG**
```swift
    open class func wechatSubscribeMSG(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

发送公众号一次性订阅消息

发送公众号H5一次性订阅消息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 订阅消息数据，开发参考：https://dwz.cn/IXptek5n (optional)

// 发送公众号一次性订阅消息
WechatAPI.wechatSubscribeMSG(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 订阅消息数据，开发参考：https://dwz.cn/IXptek5n | [optional] 

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
    open class func wechatSubscribeSend(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

发送小程序订阅消息

发送小程序订阅消息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp (optional)

// 发送小程序订阅消息
WechatAPI.wechatSubscribeSend(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 订阅消息数据，开发参考：https://dwz.cn/bohXaCnp | [optional] 

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
    open class func wechatUrlLinkGenerate(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

生成小程序URL跳转链接

生成小程序的网页跳转地址

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html (optional)

// 生成小程序URL跳转链接
WechatAPI.wechatUrlLinkGenerate(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 跳转地址数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/url-link/urllink.generate.html | [optional] 

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

获取公众号H5 UnionID

获取公众号H5用户的UnionID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let openid = "openid_example" // String | 用户的OpenID (optional)

// 获取公众号H5 UnionID
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
    open class func wechatWXACodeGet(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

获取小程序码（普通）

获取小程序码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html (optional)

// 获取小程序码（普通）
WechatAPI.wechatWXACodeGet(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.get.html | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **wechatWXACodeGetUnlimited**
```swift
    open class func wechatWXACodeGetUnlimited(appKey: String, requestBody: [AnyCodable]? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

获取小程序码（无限制）

获取无限制的小程序码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let requestBody = [123] // [AnyCodable] | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html (optional)

// 获取小程序码（无限制）
WechatAPI.wechatWXACodeGetUnlimited(appKey: appKey, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[AnyCodable]**](AnyCodable.md) | 小程序码数据，开发参考：https://developers.weixin.qq.com/miniprogram/dev/api-backend/open-api/qr-code/wxacode.getUnlimited.html | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

