//
// SubFee.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubFee: Codable, JSONEncodable, Hashable {

    public var chargeFee: String?
    public var originalChargeFee: String?
    public var switchFeeRate: String?

    public init(chargeFee: String? = nil, originalChargeFee: String? = nil, switchFeeRate: String? = nil) {
        self.chargeFee = chargeFee
        self.originalChargeFee = originalChargeFee
        self.switchFeeRate = switchFeeRate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeFee
        case originalChargeFee
        case switchFeeRate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chargeFee, forKey: .chargeFee)
        try container.encodeIfPresent(originalChargeFee, forKey: .originalChargeFee)
        try container.encodeIfPresent(switchFeeRate, forKey: .switchFeeRate)
    }
}

