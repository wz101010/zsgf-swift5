//
// GrantRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GrantRequest: Codable, JSONEncodable, Hashable {

    public static let grantTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^(email|phone|unionid|account)$/")
    public static let scopesRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let expireInDaysRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 99, exclusiveMaximum: false, multipleOf: nil)
    /** 返回地址。默认无限制，也可在【安全-开放认证网址白名单】配置 */
    public var redirectUri: String?
    /** 授权类型。可选：email、phone、unionid、account */
    public var grantType: String
    /** 自定义授权范围，用英文空格分隔 */
    public var scopes: String
    /** 用户名。授权类型为：email/phone/account必填 */
    public var userName: String?
    /** 登录密码。授权类型为：email/phone/account必填 */
    public var password: String?
    /** unionId。授权类型为：unionid必填 */
    public var unionId: String?
    /** 平台。授权类型为：unionid必填 */
    public var platform: String?
    /** 授权有效期。1~99天 */
    public var expireInDays: Int?

    public init(redirectUri: String? = nil, grantType: String, scopes: String, userName: String? = nil, password: String? = nil, unionId: String? = nil, platform: String? = nil, expireInDays: Int? = nil) {
        self.redirectUri = redirectUri
        self.grantType = grantType
        self.scopes = scopes
        self.userName = userName
        self.password = password
        self.unionId = unionId
        self.platform = platform
        self.expireInDays = expireInDays
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case redirectUri = "redirect_uri"
        case grantType = "grant_type"
        case scopes
        case userName
        case password
        case unionId
        case platform
        case expireInDays
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(redirectUri, forKey: .redirectUri)
        try container.encode(grantType, forKey: .grantType)
        try container.encode(scopes, forKey: .scopes)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(unionId, forKey: .unionId)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(expireInDays, forKey: .expireInDays)
    }
}

