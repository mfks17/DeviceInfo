//
//  DeviceInfo_tvOS.swift
//  DeviceInfo_tvOS
//
//  Created by mfks17 on 3/30/16.
//  Copyright © 2016 mfks17.org. All rights reserved.
//

import XCTest
@testable import DeviceInfo

class DeviceInfoTests: XCTestCase {
    
    func testDeviceSimulator() {
        let device = Device()
        XCTAssert(device.isOneOf(Device.allSimulatorTVs))
    }

    func testDeviceDescription() {
        XCTAssert(Device().description.hasPrefix("Simulator"))
    }

}
