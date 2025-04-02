# AlipayAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alipayCreateOrder**](AlipayAPI.md#alipaycreateorder) | **POST** /Alipay/{appKey}/CreateOrder | 创建订单 - 当面付
[**alipayCreateOrderPagePay**](AlipayAPI.md#alipaycreateorderpagepay) | **POST** /Alipay/{appKey}/CreateOrderPagePay | 创建订单 - PC支付
[**alipayCreateOrderWapPay**](AlipayAPI.md#alipaycreateorderwappay) | **POST** /Alipay/{appKey}/CreateOrderWapPay | 创建订单 - WAP支付
[**alipayOrderDetail**](AlipayAPI.md#alipayorderdetail) | **GET** /Alipay/{appKey}/OrderDetail | 订单详情
[**alipayOrderRefund**](AlipayAPI.md#alipayorderrefund) | **POST** /Alipay/{appKey}/OrderRefund | 订单退款
[**alipayReturnPageNotify**](AlipayAPI.md#alipayreturnpagenotify) | **POST** /Alipay/{appKey}/ReturnPageNotify | 支付成功同步通知


# **alipayCreateOrder**
```swift
    open class func alipayCreateOrder(appKey: String, alipayCreateOrderRequest: AlipayCreateOrderRequest? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

创建订单 - 当面付

创建一个当面付订单，并返回支付二维码。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let alipayCreateOrderRequest = AlipayCreateOrderRequest(orderNo: "orderNo_example", amount: 123, subject: "subject_example", returnUrl: "returnUrl_example") // AlipayCreateOrderRequest |  (optional)

// 创建订单 - 当面付
AlipayAPI.alipayCreateOrder(appKey: appKey, alipayCreateOrderRequest: alipayCreateOrderRequest) { (response, error) in
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
 **alipayCreateOrderRequest** | [**AlipayCreateOrderRequest**](AlipayCreateOrderRequest.md) |  | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alipayCreateOrderPagePay**
```swift
    open class func alipayCreateOrderPagePay(appKey: String, alipayCreateOrderPagePayRequest: AlipayCreateOrderPagePayRequest? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

创建订单 - PC支付

创建一个PC支付订单，并返回支付页面。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let alipayCreateOrderPagePayRequest = AlipayCreateOrderPagePayRequest(orderNo: "orderNo_example", amount: 123, subject: "subject_example", returnUrl: "returnUrl_example") // AlipayCreateOrderPagePayRequest |  (optional)

// 创建订单 - PC支付
AlipayAPI.alipayCreateOrderPagePay(appKey: appKey, alipayCreateOrderPagePayRequest: alipayCreateOrderPagePayRequest) { (response, error) in
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
 **alipayCreateOrderPagePayRequest** | [**AlipayCreateOrderPagePayRequest**](AlipayCreateOrderPagePayRequest.md) |  | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alipayCreateOrderWapPay**
```swift
    open class func alipayCreateOrderWapPay(appKey: String, alipayCreateOrderWapPayRequest: AlipayCreateOrderWapPayRequest? = nil, completion: @escaping (_ data: StringApiResponse?, _ error: Error?) -> Void)
```

创建订单 - WAP支付

创建一个WAP支付订单，并返回支付页面。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let alipayCreateOrderWapPayRequest = AlipayCreateOrderWapPayRequest(orderNo: "orderNo_example", amount: 123, subject: "subject_example", returnUrl: "returnUrl_example") // AlipayCreateOrderWapPayRequest |  (optional)

// 创建订单 - WAP支付
AlipayAPI.alipayCreateOrderWapPay(appKey: appKey, alipayCreateOrderWapPayRequest: alipayCreateOrderWapPayRequest) { (response, error) in
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
 **alipayCreateOrderWapPayRequest** | [**AlipayCreateOrderWapPayRequest**](AlipayCreateOrderWapPayRequest.md) |  | [optional] 

### Return type

[**StringApiResponse**](StringApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alipayOrderDetail**
```swift
    open class func alipayOrderDetail(appKey: String, orderNo: String? = nil, completion: @escaping (_ data: AlipayTradeQueryResponseApiResponse?, _ error: Error?) -> Void)
```

订单详情

查询订单详情，包括订单状态和支付信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let orderNo = "orderNo_example" // String | 订单号 (optional)

// 订单详情
AlipayAPI.alipayOrderDetail(appKey: appKey, orderNo: orderNo) { (response, error) in
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
 **orderNo** | **String** | 订单号 | [optional] 

### Return type

[**AlipayTradeQueryResponseApiResponse**](AlipayTradeQueryResponseApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alipayOrderRefund**
```swift
    open class func alipayOrderRefund(appKey: String, amount: String? = nil, orderNo: String? = nil, completion: @escaping (_ data: AlipayTradeRefundResponseApiResponse?, _ error: Error?) -> Void)
```

订单退款

对指定订单进行退款操作。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let amount = "amount_example" // String | 退款金额 (optional)
let orderNo = "orderNo_example" // String | 订单号 (optional)

// 订单退款
AlipayAPI.alipayOrderRefund(appKey: appKey, amount: amount, orderNo: orderNo) { (response, error) in
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
 **amount** | **String** | 退款金额 | [optional] 
 **orderNo** | **String** | 订单号 | [optional] 

### Return type

[**AlipayTradeRefundResponseApiResponse**](AlipayTradeRefundResponseApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **alipayReturnPageNotify**
```swift
    open class func alipayReturnPageNotify(appKey: String, returnPageNotifyRequest: ReturnPageNotifyRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

支付成功同步通知

处理支付宝支付成功的同步通知。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let returnPageNotifyRequest = ReturnPageNotifyRequest(appId: "appId_example", authAppId: "authAppId_example", charset: "charset_example", method: "method_example", outTradeNo: "outTradeNo_example", sellerId: "sellerId_example", sign: "sign_example", signType: "signType_example", timestamp: "timestamp_example", totalAmount: "totalAmount_example", tradeNo: "tradeNo_example", version: "version_example") // ReturnPageNotifyRequest |  (optional)

// 支付成功同步通知
AlipayAPI.alipayReturnPageNotify(appKey: appKey, returnPageNotifyRequest: returnPageNotifyRequest) { (response, error) in
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
 **returnPageNotifyRequest** | [**ReturnPageNotifyRequest**](ReturnPageNotifyRequest.md) |  | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

