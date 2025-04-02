//
// PresetPayToolInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PresetPayToolInfo: Codable, JSONEncodable, Hashable {

    public var amount: [String]?
    public var assertTypeCode: String?

    public init(amount: [String]? = nil, assertTypeCode: String? = nil) {
        self.amount = amount
        self.assertTypeCode = assertTypeCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case assertTypeCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(assertTypeCode, forKey: .assertTypeCode)
    }
}

