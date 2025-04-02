# UserCurrencyAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userCurrencies**](UserCurrencyAPI.md#usercurrencies) | **GET** /UserCurrency/{appKey}/{id} | 获取用户资产
[**userCurrencyConsume**](UserCurrencyAPI.md#usercurrencyconsume) | **POST** /UserCurrency/{appKey}/CurrencyConsume | 消费虚拟币
[**userCurrencyExchange**](UserCurrencyAPI.md#usercurrencyexchange) | **POST** /UserCurrency/{appKey}/CurrencyExchange | 兑换虚拟币
[**userCurrencyRecharge**](UserCurrencyAPI.md#usercurrencyrecharge) | **POST** /UserCurrency/{appKey}/CurrencyRecharge | 充值虚拟币
[**userCurrencyTransactions**](UserCurrencyAPI.md#usercurrencytransactions) | **GET** /UserCurrency/{appKey}/CurrencyTransactions | 虚拟币交易记录


# **userCurrencies**
```swift
    open class func userCurrencies(id: Int64, appKey: String, completion: @escaping (_ data: UserCurrencyListApiResponse?, _ error: Error?) -> Void)
```

获取用户资产

根据用户ID获取用户的资产列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 用户ID
let appKey = "appKey_example" // String | 

// 获取用户资产
UserCurrencyAPI.userCurrencies(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 用户ID | 
 **appKey** | **String** |  | 

### Return type

[**UserCurrencyListApiResponse**](UserCurrencyListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrencyConsume**
```swift
    open class func userCurrencyConsume(nonce: String, timestamp: Int64, signature: String, appKey: String, currencyConsumeRequest: CurrencyConsumeRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

消费虚拟币

根据提供的参数进行虚拟币消费

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let nonce = "nonce_example" // String | 随机数
let timestamp = 987 // Int64 | 时间戳（允许与服务器时间误差在1分钟内）
let signature = "signature_example" // String | 签名
let appKey = "appKey_example" // String | 
let currencyConsumeRequest = CurrencyConsumeRequest(currency: "currency_example", balance: 123, remark: "remark_example", description: "description_example", tags: "tags_example") // CurrencyConsumeRequest | 消费请求参数 (optional)

// 消费虚拟币
UserCurrencyAPI.userCurrencyConsume(nonce: nonce, timestamp: timestamp, signature: signature, appKey: appKey, currencyConsumeRequest: currencyConsumeRequest) { (response, error) in
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
 **nonce** | **String** | 随机数 | 
 **timestamp** | **Int64** | 时间戳（允许与服务器时间误差在1分钟内） | 
 **signature** | **String** | 签名 | 
 **appKey** | **String** |  | 
 **currencyConsumeRequest** | [**CurrencyConsumeRequest**](CurrencyConsumeRequest.md) | 消费请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrencyExchange**
```swift
    open class func userCurrencyExchange(nonce: String, timestamp: Int64, signature: String, appKey: String, exchangeCurrencyRequest: ExchangeCurrencyRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

兑换虚拟币

根据提供的参数进行虚拟币兑换

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let nonce = "nonce_example" // String | 随机数
let timestamp = 987 // Int64 | 时间戳（允许与服务器时间误差在1分钟内）
let signature = "signature_example" // String | 签名
let appKey = "appKey_example" // String | 
let exchangeCurrencyRequest = ExchangeCurrencyRequest(fromCurrency: "fromCurrency_example", currency: "currency_example", balance: 123, remark: "remark_example", description: "description_example", tags: "tags_example") // ExchangeCurrencyRequest | 兑换请求参数 (optional)

// 兑换虚拟币
UserCurrencyAPI.userCurrencyExchange(nonce: nonce, timestamp: timestamp, signature: signature, appKey: appKey, exchangeCurrencyRequest: exchangeCurrencyRequest) { (response, error) in
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
 **nonce** | **String** | 随机数 | 
 **timestamp** | **Int64** | 时间戳（允许与服务器时间误差在1分钟内） | 
 **signature** | **String** | 签名 | 
 **appKey** | **String** |  | 
 **exchangeCurrencyRequest** | [**ExchangeCurrencyRequest**](ExchangeCurrencyRequest.md) | 兑换请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrencyRecharge**
```swift
    open class func userCurrencyRecharge(nonce: String, timestamp: Int64, signature: String, appKey: String, rechargePointRequest: RechargePointRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

充值虚拟币

根据提供的参数进行虚拟币充值

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let nonce = "nonce_example" // String | 随机数
let timestamp = 987 // Int64 | 时间戳（允许与服务器时间误差在1分钟内）
let signature = "signature_example" // String | 签名
let appKey = "appKey_example" // String | 
let rechargePointRequest = RechargePointRequest(currency: "currency_example", balance: 123, remark: "remark_example", description: "description_example", tags: "tags_example") // RechargePointRequest | 充值请求参数 (optional)

// 充值虚拟币
UserCurrencyAPI.userCurrencyRecharge(nonce: nonce, timestamp: timestamp, signature: signature, appKey: appKey, rechargePointRequest: rechargePointRequest) { (response, error) in
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
 **nonce** | **String** | 随机数 | 
 **timestamp** | **Int64** | 时间戳（允许与服务器时间误差在1分钟内） | 
 **signature** | **String** | 签名 | 
 **appKey** | **String** |  | 
 **rechargePointRequest** | [**RechargePointRequest**](RechargePointRequest.md) | 充值请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrencyTransactions**
```swift
    open class func userCurrencyTransactions(appKey: String, transType: String? = nil, curCode: String? = nil, startTime: Date? = nil, endTime: Date? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserCurrencyCurrencyTransResultApiResponse?, _ error: Error?) -> Void)
```

虚拟币交易记录

根据提供的参数获取虚拟币交易记录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let transType = "transType_example" // String | 交易类型 (optional)
let curCode = "curCode_example" // String | 货币代码 (optional)
let startTime = Date() // Date | 开始时间 (optional)
let endTime = Date() // Date | 结束时间 (optional)
let skip = 987 // Int | 跳过的条数 (optional)
let take = 987 // Int | 拉取的条数 (optional)

// 虚拟币交易记录
UserCurrencyAPI.userCurrencyTransactions(appKey: appKey, transType: transType, curCode: curCode, startTime: startTime, endTime: endTime, skip: skip, take: take) { (response, error) in
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
 **transType** | **String** | 交易类型 | [optional] 
 **curCode** | **String** | 货币代码 | [optional] 
 **startTime** | **Date** | 开始时间 | [optional] 
 **endTime** | **Date** | 结束时间 | [optional] 
 **skip** | **Int** | 跳过的条数 | [optional] 
 **take** | **Int** | 拉取的条数 | [optional] 

### Return type

[**UserCurrencyCurrencyTransResultApiResponse**](UserCurrencyCurrencyTransResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

