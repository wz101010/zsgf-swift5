//
// AppSettingGroupPostResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppSettingGroupPostResult: Codable, JSONEncodable, Hashable {

    public var id: Int64?

    public init(id: Int64? = nil) {
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AppSettingGroupPostResult: Identifiable {}
