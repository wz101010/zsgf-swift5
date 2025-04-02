# Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | 订单的唯一标识符。 | [optional] 
**userID** | **Int64** | 创建订单的用户ID。 | [optional] 
**payType** | **String** | 订单的支付类型，例如 &#39;信用卡&#39;, &#39;支付宝&#39;, &#39;微信支付&#39; 等。 | [optional] 
**amount** | **Double** | 订单的总金额。 | [optional] 
**orderNo** | **String** | 订单的唯一编号，通常由系统生成。 | [optional] 
**tradeNo** | **String** | 与订单关联的交易编号，通常由支付平台提供。 | [optional] 
**status** | **String** | 订单的当前状态，例如 &#39;待支付&#39;, &#39;已完成&#39;, &#39;已取消&#39; 等。 | [optional] 
**productType** | **String** | 订单中商品的类型分类。 | [optional] 
**productID** | **String** | 订单中商品的唯一标识符。 | [optional] 
**productName** | **String** | 订单中商品的名称。 | [optional] 
**allowRefund** | **Bool** | 指示订单是否允许进行退款操作。 | [optional] 
**allowRefundUntil** | **Date** | 订单允许进行退款操作的截止时间。 | [optional] 
**tags** | **String** | 用于分类或标记订单的标签。 | [optional] 
**remark** | **String** | 订单的额外备注信息。 | [optional] 
**description** | **String** | 订单的详细描述信息。 | [optional] 
**orderPayTime** | **Date** | 订单完成支付的时间。 | [optional] 
**expireTime** | **Date** | 订单的过期时间，超过该时间订单将自动取消。 | [optional] 
**createDate** | **Date** | 订单的创建时间，默认为当前时间。 | [optional] 
**lastUpdate** | **Date** | 订单的最后更新时间，默认为当前时间。 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


