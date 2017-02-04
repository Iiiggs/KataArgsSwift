//
//  Tests.swift
//  Tests
//
//  Created by Igor Kantor on 1/30/17.
//  Copyright © 2017 Igor Kantor. All rights reserved.
//

import XCTest

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let input = "-l -p 8080 -d /usr/logs"
        
        let parser = Parser(input: input)
        
        XCTAssert(parser["l"]!.boolValue)
        XCTAssert(parser["p"]!.intValue == 8080)
        XCTAssert(parser["d"] as! String ==  "/usr/logs")
    }
    
    //     This parser takes a schema detailing what arguments the program expects. The schema specifies the number and types of flags and values the program expects.
    //
    //The arguments passed to the program consist of flags and values. Flags should be one character, preceded by a minus sign. Each flag should have zero, or one value associated with it.
    
    // -l -p 8080 -d /usr/logs
    
    //    The program can then ask the args parser for each of the values, using the names of the flags. The values are returned with the correct types, as specified in the schema.
    
}
