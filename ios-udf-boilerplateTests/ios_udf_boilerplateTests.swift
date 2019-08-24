//
//  ios_udf_boilerplateTests.swift
//  ios-udf-boilerplateTests
//
//  Created by Suren Rodrigo on 8/9/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import XCTest
import Nimble

@testable import ios_udf_boilerplate

class ios_udf_boilerplateTests:  XCTestCase {
    var testBase: TestBase = TestBase()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        store.subscribe(testBase)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        store.unsubscribe(testBase)
    }
    
    func testSecond() {
        self.measure {
            testBase.updateName(gender: "success")
            expect(self.testBase.username).toEventually(equal("Sample Name"))
        }
        
    }


}
