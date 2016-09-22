//
//  DateTests.swift
//  JSONTests
//
//  Created by Sam Soffes on 9/22/16.
//  Copyright © 2016 Sam Soffes. All rights reserved.
//

import XCTest
import JSON

final class DateTests: XCTestCase {
	let date = Date(timeIntervalSince1970: 1474576117)

	func testISO8601() {
		let dictionary = [
			"timezone": "2016-09-22T22:28:37+02:00",
			"utc": "2016-09-22T20:28:37Z"
		]

		XCTAssertEqual(try! decode(dictionary, key: "timezone"), date)
		XCTAssertEqual(try! decode(dictionary, key: "utc"), date)
	}

	func testUnixTimestamp() {
		let dictionary = [
			"timestamp": 1474576117
		]

		XCTAssertEqual(try! decode(dictionary, key: "timestamp"), date)
	}
}
