//
// ServiceItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** 服务配置项实体，用于定义和管理服务相关的配置信息。 */
public struct ServiceItem: Codable, JSONEncodable, Hashable {

    public static let bizCodeRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let providerCodeRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let groupCodeRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let nameRule = StringRule(minLength: nil, maxLength: 100, pattern: nil)
    public static let codeRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let valueTypeRule = StringRule(minLength: nil, maxLength: 50, pattern: nil)
    public static let iconRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    public static let tagsRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    /** 服务配置项的唯一标识符。 */
    public var id: Int64?
    /** 服务配置项所属的业务代码，用于分类管理。 */
    public var bizCode: String?
    /** 关联的服务商代码，用于标识提供该配置项的服务商。 */
    public var providerCode: String?
    /** 服务配置项所属的功能分组代码，用于组织和管理相关配置项。 */
    public var groupCode: String?
    /** 服务配置项的名称，用于描述其功能或用途。 */
    public var name: String?
    /** 服务配置项的唯一代码，用于系统内部标识。 */
    public var code: String?
    /** 服务配置项的值类型，例如 'text', 'number', 'boolean' 等。默认为 'text'。 */
    public var valueType: String?
    /** 服务配置项的图标URL或路径，用于在界面上显示。 */
    public var icon: String?
    /** 服务配置项的默认值，当未设置具体值时使用。 */
    public var valueDefaults: String?
    /** 服务配置项的详细描述信息，用于说明其用途和配置方法。 */
    public var description: String?
    /** 用于分类或标记服务配置项的标签。 */
    public var tags: String?
    /** 指示该配置项是否为系统级别的配置项，默认为 false。 */
    public var isSystem: Bool?
    /** 指示服务配置项是否在界面上显示，默认为 true。 */
    public var show: Bool?
    /** 服务配置项在界面上的显示顺序。 */
    public var showIndex: Int?
    /** 服务配置项的创建日期，默认为当前时间。 */
    public var createDate: Date?
    /** 服务配置项的最后更新日期，默认为当前时间。 */
    public var lastUpdate: Date?

    public init(id: Int64? = nil, bizCode: String? = nil, providerCode: String? = nil, groupCode: String? = nil, name: String? = nil, code: String? = nil, valueType: String? = nil, icon: String? = nil, valueDefaults: String? = nil, description: String? = nil, tags: String? = nil, isSystem: Bool? = nil, show: Bool? = nil, showIndex: Int? = nil, createDate: Date? = nil, lastUpdate: Date? = nil) {
        self.id = id
        self.bizCode = bizCode
        self.providerCode = providerCode
        self.groupCode = groupCode
        self.name = name
        self.code = code
        self.valueType = valueType
        self.icon = icon
        self.valueDefaults = valueDefaults
        self.description = description
        self.tags = tags
        self.isSystem = isSystem
        self.show = show
        self.showIndex = showIndex
        self.createDate = createDate
        self.lastUpdate = lastUpdate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case bizCode
        case providerCode
        case groupCode
        case name
        case code
        case valueType
        case icon
        case valueDefaults
        case description
        case tags
        case isSystem
        case show
        case showIndex
        case createDate
        case lastUpdate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(bizCode, forKey: .bizCode)
        try container.encodeIfPresent(providerCode, forKey: .providerCode)
        try container.encodeIfPresent(groupCode, forKey: .groupCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(valueType, forKey: .valueType)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(valueDefaults, forKey: .valueDefaults)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(isSystem, forKey: .isSystem)
        try container.encodeIfPresent(show, forKey: .show)
        try container.encodeIfPresent(showIndex, forKey: .showIndex)
        try container.encodeIfPresent(createDate, forKey: .createDate)
        try container.encodeIfPresent(lastUpdate, forKey: .lastUpdate)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServiceItem: Identifiable {}
