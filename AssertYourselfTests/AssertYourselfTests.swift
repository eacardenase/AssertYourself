//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Edwin Cardenas on 5/27/26.
//

import XCTest

@testable import AssertYourself

final class AssertYourselfTests: XCTestCase {
    func test_fail() {
        XCTFail()
    }

    func test_fail_withSimpleMessage() {
        XCTFail("Houston, we have a problem.")
    }

    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42

        XCTFail("The Answer to the Great Question is \(theAnswer)")
    }

    func test_avoidConditionalCode() {
        let success = false

        if !success {
            XCTFail()
        }
    }

    func test_assertTrue() {
        let success = false

        XCTAssertTrue(success)
    }

    func test_assertFalse() {
        let success = true

        XCTAssertFalse(success)
    }

    func test_assertNil() {
        let optionalValue: Int? = 123

        XCTAssertNil(optionalValue)
    }

    struct SimpleStruct {
        let x: Int
        let y: Int
    }

    func test_assertNil_withSimpleStruct() {
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)

        XCTAssertNil(optionalValue)
    }

    struct StructWithDescription: CustomStringConvertible {
        let x: Int
        let y: Int

        var description: String { "(\(x), \(y))" }
    }

    func test_assertNil_withSelfDescribingType() {
        let optionalValue: StructWithDescription? = StructWithDescription(
            x: 1,
            y: 2
        )

        XCTAssertNil(optionalValue)
    }
}
