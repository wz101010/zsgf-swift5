//
// AppCheckVersionResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCheckVersionResult: Codable, JSONEncodable, Hashable {

    public var versions: [String]?
    public var newVersions: [String]?

    public init(versions: [String]? = nil, newVersions: [String]? = nil) {
        self.versions = versions
        self.newVersions = newVersions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case versions
        case newVersions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(versions, forKey: .versions)
        try container.encodeIfPresent(newVersions, forKey: .newVersions)
    }
}

