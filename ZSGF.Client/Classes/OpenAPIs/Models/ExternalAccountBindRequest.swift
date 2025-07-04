//
// ExternalAccountBindRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExternalAccountBindRequest: Codable, JSONEncodable, Hashable {

    public static let unionIDRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let platformRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let platformNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var unionID: String
    public var platform: String
    public var platformName: String
    public var avatar: String?
    public var data: String?

    public init(unionID: String, platform: String, platformName: String, avatar: String? = nil, data: String? = nil) {
        self.unionID = unionID
        self.platform = platform
        self.platformName = platformName
        self.avatar = avatar
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case unionID
        case platform
        case platformName
        case avatar
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(unionID, forKey: .unionID)
        try container.encode(platform, forKey: .platform)
        try container.encode(platformName, forKey: .platformName)
        try container.encodeIfPresent(avatar, forKey: .avatar)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

