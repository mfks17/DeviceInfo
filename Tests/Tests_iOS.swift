//
//  DeviceInfo_iOSTests.swift
//  DeviceInfo_iOSTests
//
//  Created by mfks17 on 3/26/16.
//  Copyright © 2016 mfks17.org. All rights reserved.
//

import XCTest
@testable import DeviceInfo

class DeviceInfoTests: XCTestCase {
    
    func testDeviceSimulator() {
        XCTAssert(Device().isOneOf(Device.allSimulators))
    }

    func testIsSimulator() {
        XCTAssert(Device().isSimulator)
    }

    func testDeviceDescription() {
        XCTAssert(Device().description.hasPrefix("Simulator"))
    }

    func testOperator1() {
        XCTAssert(Device.BatteryState.Full > Device.BatteryState.Charging(100))
    }

    func testOperator2() {
        XCTAssert(Device.BatteryState.Charging(75) != Device.BatteryState.Unplugged(75))
    }

    func testOperator3() {
        XCTAssert(Device.BatteryState.Unplugged(2) > Device.BatteryState.Charging(1))
    }
    
}
