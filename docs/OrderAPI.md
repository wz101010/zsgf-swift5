# OrderAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order**](OrderAPI.md#order) | **GET** /Order/{appKey}/{id} | 获取订单详情
[**orderCreate**](OrderAPI.md#ordercreate) | **POST** /Order/{appKey}/Create | 创建订单
[**orders**](OrderAPI.md#orders) | **GET** /Order/{appKey} | 获取订单列表


# **order**
```swift
    open class func order(id: Int64, appKey: String, completion: @escaping (_ data: OrderApiResponse?, _ error: Error?) -> Void)
```

获取订单详情

根据订单ID获取订单详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 订单ID
let appKey = "appKey_example" // String | 

// 获取订单详情
OrderAPI.order(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 订单ID | 
 **appKey** | **String** |  | 

### Return type

[**OrderApiResponse**](OrderApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderCreate**
```swift
    open class func orderCreate(appKey: String, createOrderRequest: CreateOrderRequest? = nil, completion: @escaping (_ data: CreateOrderResultApiResponse?, _ error: Error?) -> Void)
```

创建订单

根据请求参数创建订单

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let createOrderRequest = CreateOrderRequest(amount: 123, productName: "productName_example", productType: "productType_example", productID: "productID_example") // CreateOrderRequest | 订单创建请求 (optional)

// 创建订单
OrderAPI.orderCreate(appKey: appKey, createOrderRequest: createOrderRequest) { (response, error) in
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
 **createOrderRequest** | [**CreateOrderRequest**](CreateOrderRequest.md) | 订单创建请求 | [optional] 

### Return type

[**CreateOrderResultApiResponse**](CreateOrderResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orders**
```swift
    open class func orders(appKey: String, status: String? = nil, orderNo: String? = nil, tradeNo: String? = nil, userId: Int64? = nil, pctType: String? = nil, pctId: String? = nil, pctName: String? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: OrderListResultApiResponse?, _ error: Error?) -> Void)
```

获取订单列表

根据查询条件获取订单列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let status = "status_example" // String | 订单状态 (optional)
let orderNo = "orderNo_example" // String | 系统订单号 (optional)
let tradeNo = "tradeNo_example" // String | 支付平台单号 (optional)
let userId = 987 // Int64 | 用户ID (optional)
let pctType = "pctType_example" // String | 商品类型 (optional)
let pctId = "pctId_example" // String | 商品ID (optional)
let pctName = "pctName_example" // String | 商品名称 (optional)
let skip = 987 // Int | 跳过的条数 (optional)
let take = 987 // Int | 拉取的条数 (optional)

// 获取订单列表
OrderAPI.orders(appKey: appKey, status: status, orderNo: orderNo, tradeNo: tradeNo, userId: userId, pctType: pctType, pctId: pctId, pctName: pctName, skip: skip, take: take) { (response, error) in
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
 **status** | **String** | 订单状态 | [optional] 
 **orderNo** | **String** | 系统订单号 | [optional] 
 **tradeNo** | **String** | 支付平台单号 | [optional] 
 **userId** | **Int64** | 用户ID | [optional] 
 **pctType** | **String** | 商品类型 | [optional] 
 **pctId** | **String** | 商品ID | [optional] 
 **pctName** | **String** | 商品名称 | [optional] 
 **skip** | **Int** | 跳过的条数 | [optional] 
 **take** | **Int** | 拉取的条数 | [optional] 

### Return type

[**OrderListResultApiResponse**](OrderListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

