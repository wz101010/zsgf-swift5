//
// Project.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** 项目 */
public struct Project: Codable, JSONEncodable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let logoRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    /** 状态码 */
    public var id: Int64?
    /** 用户 ID */
    public var userID: Int64?
    /** 名称 */
    public var name: String?
    /** Logo */
    public var logo: String?
    /** 描述 */
    public var description: String?
    /** 是否显示 */
    public var show: Bool?
    /** 显示索引 */
    public var showIndex: Int64?
    /** 创建时间 */
    public var createDate: Date?
    /** 最后更新时间 */
    public var lastUpdate: Date?

    public init(id: Int64? = nil, userID: Int64? = nil, name: String? = nil, logo: String? = nil, description: String? = nil, show: Bool? = nil, showIndex: Int64? = nil, createDate: Date? = nil, lastUpdate: Date? = nil) {
        self.id = id
        self.userID = userID
        self.name = name
        self.logo = logo
        self.description = description
        self.show = show
        self.showIndex = showIndex
        self.createDate = createDate
        self.lastUpdate = lastUpdate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userID
        case name
        case logo
        case description
        case show
        case showIndex
        case createDate
        case lastUpdate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userID, forKey: .userID)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(show, forKey: .show)
        try container.encodeIfPresent(showIndex, forKey: .showIndex)
        try container.encodeIfPresent(createDate, forKey: .createDate)
        try container.encodeIfPresent(lastUpdate, forKey: .lastUpdate)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Project: Identifiable {}
