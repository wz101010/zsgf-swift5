# CurrencyTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | 货币交易记录的唯一标识符。 | [optional] 
**fromUserID** | **Int64** | 发起交易的发送方用户ID，若为转账交易时必填。 | [optional] 
**userID** | **Int64** | 进行货币交易的用户ID。 | [optional] 
**transactionType** | **String** | 货币交易的类型，例如 &#39;消费&#39;, &#39;奖励&#39;, &#39;兑换&#39;, &#39;转账&#39; 等。 | [optional] 
**currencyType** | **String** | 交易的货币类型，例如 &#39;USD&#39;, &#39;CNY&#39; 等。 | [optional] 
**currencyChange** | **Int64** | 货币的变动数量，正数表示增加，负数表示减少。 | [optional] 
**currencyBalance** | **Double** | 交易完成后的货币余额。 | [optional] 
**description** | **String** | 描述货币变动的具体原因或相关交易详情。 | [optional] 
**status** | **String** | 货币交易的当前状态，例如 &#39;成功&#39;, &#39;失败&#39;, &#39;待审核&#39; 等。 | [optional] 
**remark** | **String** | 交易的额外信息或管理员的备注。 | [optional] 
**tags** | **String** | 用于分类或标记交易的标签。 | [optional] 
**createDate** | **Date** | 货币交易发生的时间，默认为当前时间。 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


