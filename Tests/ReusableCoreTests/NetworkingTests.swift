//
//  NetworkingTests.swift
//  ReusableCoreTests
//
//  Created by Sebastian Vidrea on 20/10/2020.
//

import XCTest
@testable import ReusableCore

final class NetworkingTests: XCTestCase {
    func testLoadDataCall() {
        let manager = ReusableCore.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://raywenderlich.com") else {
            return XCTFail("Could not create URL properly")
        }
        manager.loadData(from: url) { result in
            expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
    }

    static var allTests = [
        ("testLoadDataCall", testLoadDataCall)
    ]
}
