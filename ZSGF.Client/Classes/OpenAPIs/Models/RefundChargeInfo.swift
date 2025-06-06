//
// RefundChargeInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RefundChargeInfo: Codable, JSONEncodable, Hashable {

    public var chargeType: String?
    public var refundChargeFee: String?
    public var refundSubFeeDetailList: [RefundSubFee]?
    public var switchFeeRate: String?

    public init(chargeType: String? = nil, refundChargeFee: String? = nil, refundSubFeeDetailList: [RefundSubFee]? = nil, switchFeeRate: String? = nil) {
        self.chargeType = chargeType
        self.refundChargeFee = refundChargeFee
        self.refundSubFeeDetailList = refundSubFeeDetailList
        self.switchFeeRate = switchFeeRate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeType
        case refundChargeFee
        case refundSubFeeDetailList
        case switchFeeRate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chargeType, forKey: .chargeType)
        try container.encodeIfPresent(refundChargeFee, forKey: .refundChargeFee)
        try container.encodeIfPresent(refundSubFeeDetailList, forKey: .refundSubFeeDetailList)
        try container.encodeIfPresent(switchFeeRate, forKey: .switchFeeRate)
    }
}

