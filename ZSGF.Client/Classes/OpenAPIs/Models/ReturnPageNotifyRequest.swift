//
// ReturnPageNotifyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** 支付宝返回页面通知请求 */
public struct ReturnPageNotifyRequest: Codable, JSONEncodable, Hashable {

    /** 应用ID */
    public var appId: String?
    /** 授权应用ID */
    public var authAppId: String?
    /** 字符集 */
    public var charset: String?
    /** 接口名称 */
    public var method: String?
    /** 商户订单号 */
    public var outTradeNo: String?
    /** 卖家支付宝用户号 */
    public var sellerId: String?
    /** 签名 */
    public var sign: String?
    /** 签名类型 */
    public var signType: String?
    /** 时间戳 */
    public var timestamp: String?
    /** 订单总金额 */
    public var totalAmount: String?
    /** 支付宝交易号 */
    public var tradeNo: String?
    /** 接口版本 */
    public var version: String?

    public init(appId: String? = nil, authAppId: String? = nil, charset: String? = nil, method: String? = nil, outTradeNo: String? = nil, sellerId: String? = nil, sign: String? = nil, signType: String? = nil, timestamp: String? = nil, totalAmount: String? = nil, tradeNo: String? = nil, version: String? = nil) {
        self.appId = appId
        self.authAppId = authAppId
        self.charset = charset
        self.method = method
        self.outTradeNo = outTradeNo
        self.sellerId = sellerId
        self.sign = sign
        self.signType = signType
        self.timestamp = timestamp
        self.totalAmount = totalAmount
        self.tradeNo = tradeNo
        self.version = version
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appId = "app_id"
        case authAppId = "auth_app_id"
        case charset
        case method
        case outTradeNo = "out_trade_no"
        case sellerId = "seller_id"
        case sign
        case signType = "sign_type"
        case timestamp
        case totalAmount = "total_amount"
        case tradeNo = "trade_no"
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(authAppId, forKey: .authAppId)
        try container.encodeIfPresent(charset, forKey: .charset)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(outTradeNo, forKey: .outTradeNo)
        try container.encodeIfPresent(sellerId, forKey: .sellerId)
        try container.encodeIfPresent(sign, forKey: .sign)
        try container.encodeIfPresent(signType, forKey: .signType)
        try container.encodeIfPresent(timestamp, forKey: .timestamp)
        try container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        try container.encodeIfPresent(tradeNo, forKey: .tradeNo)
        try container.encodeIfPresent(version, forKey: .version)
    }
}

