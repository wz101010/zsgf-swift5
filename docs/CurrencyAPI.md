# CurrencyAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currencies**](CurrencyAPI.md#currencies) | **GET** /Currency/{appKey} | 获取货币列表
[**currency**](CurrencyAPI.md#currency) | **GET** /Currency/{appKey}/{id} | 获取货币详情
[**currencyDelete**](CurrencyAPI.md#currencydelete) | **DELETE** /Currency/{appKey}/{id} | 删除货币
[**currencyExchangeRateDelete**](CurrencyAPI.md#currencyexchangeratedelete) | **DELETE** /Currency/{appKey}/ExchangeRates/{id} | 删除汇率
[**currencyExchangeRatePut**](CurrencyAPI.md#currencyexchangerateput) | **PUT** /Currency/{appKey}/ExchangeRates/{code} | 更新汇率
[**currencyExchangeRates**](CurrencyAPI.md#currencyexchangerates) | **GET** /Currency/{appKey}/ExchangeRates/{code} | 获取汇率列表
[**currencyPost**](CurrencyAPI.md#currencypost) | **POST** /Currency/{appKey} | 创建新货币
[**currencyPut**](CurrencyAPI.md#currencyput) | **PUT** /Currency/{appKey}/{id} | 更新货币信息
[**currencyTransactions**](CurrencyAPI.md#currencytransactions) | **GET** /Currency/{appKey}/Transactions | 获取货币交易记录


# **currencies**
```swift
    open class func currencies(appKey: String, completion: @escaping (_ data: CurrencyListApiResponse?, _ error: Error?) -> Void)
```

获取货币列表

获取所有货币的列表，按ID降序排列。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 获取货币列表
CurrencyAPI.currencies(appKey: appKey) { (response, error) in
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

### Return type

[**CurrencyListApiResponse**](CurrencyListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currency**
```swift
    open class func currency(id: Int64, appKey: String, completion: @escaping (_ data: CurrencyApiResponse?, _ error: Error?) -> Void)
```

获取货币详情

根据货币ID获取货币的详细信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 货币ID
let appKey = "appKey_example" // String | 

// 获取货币详情
CurrencyAPI.currency(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 货币ID | 
 **appKey** | **String** |  | 

### Return type

[**CurrencyApiResponse**](CurrencyApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyDelete**
```swift
    open class func currencyDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除货币

根据货币ID删除货币。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 货币ID
let appKey = "appKey_example" // String | 

// 删除货币
CurrencyAPI.currencyDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 货币ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyExchangeRateDelete**
```swift
    open class func currencyExchangeRateDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除汇率

根据汇率ID删除汇率。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 汇率ID
let appKey = "appKey_example" // String | 

// 删除汇率
CurrencyAPI.currencyExchangeRateDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 汇率ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyExchangeRatePut**
```swift
    open class func currencyExchangeRatePut(code: String, appKey: String, exchangeRatePutRequest: ExchangeRatePutRequest? = nil, completion: @escaping (_ data: Int64ApiResponse?, _ error: Error?) -> Void)
```

更新汇率

根据货币代码更新汇率信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let code = "code_example" // String | 货币代码
let appKey = "appKey_example" // String | 
let exchangeRatePutRequest = ExchangeRatePutRequest(toCurrencyCode: "toCurrencyCode_example", exchangeRate: 123, description: "description_example") // ExchangeRatePutRequest | 汇率信息 (optional)

// 更新汇率
CurrencyAPI.currencyExchangeRatePut(code: code, appKey: appKey, exchangeRatePutRequest: exchangeRatePutRequest) { (response, error) in
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
 **code** | **String** | 货币代码 | 
 **appKey** | **String** |  | 
 **exchangeRatePutRequest** | [**ExchangeRatePutRequest**](ExchangeRatePutRequest.md) | 汇率信息 | [optional] 

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyExchangeRates**
```swift
    open class func currencyExchangeRates(code: String, appKey: String, completion: @escaping (_ data: CurrencyExchangeRateApiResponse?, _ error: Error?) -> Void)
```

获取汇率列表

根据货币代码获取该货币的汇率列表。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let code = "code_example" // String | 货币代码
let appKey = "appKey_example" // String | 

// 获取汇率列表
CurrencyAPI.currencyExchangeRates(code: code, appKey: appKey) { (response, error) in
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
 **code** | **String** | 货币代码 | 
 **appKey** | **String** |  | 

### Return type

[**CurrencyExchangeRateApiResponse**](CurrencyExchangeRateApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyPost**
```swift
    open class func currencyPost(appKey: String, currency: Currency? = nil, completion: @escaping (_ data: Int64ApiResponse?, _ error: Error?) -> Void)
```

创建新货币

创建一个新的货币并返回其ID。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let currency = Currency(id: 123, name: "name_example", code: "code_example", symbol: "symbol_example", issuer: "issuer_example", currencyType: "currencyType_example", tags: "tags_example", status: false, enableVirtualRecharge: false, enableVirtualConsume: false, description: "description_example", fiatExchangeRate: 123, fiatDailyRechargeLimit: 123, totalSupply: 123, createDate: Date(), lastUpdate: Date()) // Currency | 货币信息 (optional)

// 创建新货币
CurrencyAPI.currencyPost(appKey: appKey, currency: currency) { (response, error) in
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
 **currency** | [**Currency**](Currency.md) | 货币信息 | [optional] 

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyPut**
```swift
    open class func currencyPut(id: Int64, appKey: String, currency: Currency? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新货币信息

根据货币ID更新货币的详细信息。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 货币ID
let appKey = "appKey_example" // String | 
let currency = Currency(id: 123, name: "name_example", code: "code_example", symbol: "symbol_example", issuer: "issuer_example", currencyType: "currencyType_example", tags: "tags_example", status: false, enableVirtualRecharge: false, enableVirtualConsume: false, description: "description_example", fiatExchangeRate: 123, fiatDailyRechargeLimit: 123, totalSupply: 123, createDate: Date(), lastUpdate: Date()) // Currency | 货币信息 (optional)

// 更新货币信息
CurrencyAPI.currencyPut(id: id, appKey: appKey, currency: currency) { (response, error) in
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
 **id** | **Int64** | 货币ID | 
 **appKey** | **String** |  | 
 **currency** | [**Currency**](Currency.md) | 货币信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currencyTransactions**
```swift
    open class func currencyTransactions(appKey: String, userId: Int64? = nil, transType: String? = nil, curCode: String? = nil, startTime: Date? = nil, endTime: Date? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: CurrencyTransactionListApiResponse?, _ error: Error?) -> Void)
```

获取货币交易记录

根据用户ID、交易类型、货币代码、时间范围等条件获取货币交易记录。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let userId = 987 // Int64 | 用户ID (optional)
let transType = "transType_example" // String | 交易类型 (optional)
let curCode = "curCode_example" // String | 货币代码 (optional)
let startTime = Date() // Date | 开始时间 (optional)
let endTime = Date() // Date | 结束时间 (optional)
let skip = 987 // Int | 跳过的条数 (optional)
let take = 987 // Int | 拉取的条数 (optional)

// 获取货币交易记录
CurrencyAPI.currencyTransactions(appKey: appKey, userId: userId, transType: transType, curCode: curCode, startTime: startTime, endTime: endTime, skip: skip, take: take) { (response, error) in
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
 **userId** | **Int64** | 用户ID | [optional] 
 **transType** | **String** | 交易类型 | [optional] 
 **curCode** | **String** | 货币代码 | [optional] 
 **startTime** | **Date** | 开始时间 | [optional] 
 **endTime** | **Date** | 结束时间 | [optional] 
 **skip** | **Int** | 跳过的条数 | [optional] 
 **take** | **Int** | 拉取的条数 | [optional] 

### Return type

[**CurrencyTransactionListApiResponse**](CurrencyTransactionListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

