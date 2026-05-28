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
}
