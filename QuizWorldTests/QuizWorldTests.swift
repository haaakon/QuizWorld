//
//  QuizWorldTests.swift
//  QuizWorldTests
//
//  Created by Håkon Bogen on 28/01/17.
//  Copyright © 2017 beiningbogen.no. All rights reserved.
//

import XCTest
@testable import QuizWorld
@testable import QuizWorldAPI
@testable import ReactiveExtensions_TestHelpers
import Prelude
import ReactiveSwift
import Result

class QuizWorldTests: XCTestCase {
    
    fileprivate let vm: QuestionViewModelType = QuestionViewModel()
    
    fileprivate let showQuestionText = TestObserver<String, NoError>()
    
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
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
