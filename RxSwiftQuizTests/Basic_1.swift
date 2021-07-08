//
//  Basic_1.swift
//  RxSwiftQuizTests
//
//

import RxBlocking
import RxSwift
import RxTest
import XCTest

// Super basic Level
class Basic_1: XCTestCase {
    let oneToFiveEvent = Observable.of(1, 2, 3, 4, 5)
    let sameValueEvent = Observable.of(1, 1, 1, 2, 2)

    /*

     !! Here are some tips and answers !!

     https://github.com/mironal/RxSwiftQuiz/blob/main/Answers/Answers_Basic1.md

      */

    // This test code is a sample. The answer has already been written.
    func testSample() throws {
        // Write the code to convert `oneToFiveEvent` so that the test passes
        let answer = oneToFiveEvent
            .map { $0 * 2 } // <- You write the code so that the test passes like this.

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [2, 4, 6, 8, 10], "Each value will be doubled")
    }

    func test1() throws {
        // Write the code to convert `oneToFiveEvent` so that the test passes
        let answer = oneToFiveEvent // 1, 2, 3, 4, 5
            .filter { !$0.isMultiple(of: 2) }

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [1, 3, 5], "Odd only")
    }

    func test2() throws {
        // Write the code to convert `oneToFiveEvent` so that the test passes
        let answer = oneToFiveEvent
            .reduce(0, accumulator: +)

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [15], "Total only")
    }

    func test3() throws {
        // Write the code to convert `oneToFiveEvent` so that the test passes
        let answer = oneToFiveEvent
            .scan(0, accumulator: +)

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [1, 3, 6, 10, 15], "The added values are emitted in sequence")
    }

    func test4() throws {
        // Write the code to convert `oneToFiveEvent` so that the test passes
        let answer = oneToFiveEvent
            .startWith(0)

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [0, 1, 2, 3, 4, 5], "Zero is added to the beginning")
    }

    func test5() throws {
        // Write the code to convert `oneToFiveEvent` so that the test passes
        let answer = oneToFiveEvent
            .map { $0 + 1 }

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [2, 3, 4, 5, 6])
    }

    func test6() throws {
        // Write the code to convert `sameValueEvent` so that the test passes
        let answer = sameValueEvent // 1, 1, 1, 2, 2
            .map { $0 * 2 }

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [2, 2, 2, 4, 4], "Each value will be doubled")
    }

    func test7() throws {
        // Write the code to convert `sameValueEvent` so that the test passes
        let answer = sameValueEvent
            .distinctUntilChanged()
            .map { _ in 1 }

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [1, 1])
    }

    func test8() throws {
        // Write the code to convert `sameValueEvent` so that the test passes
        let answer = sameValueEvent
            .distinctUntilChanged()

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [1, 2])
    }

    func test9() throws {
        // Write the code to convert `sameValueEvent` so that the test passes
        let answer = sameValueEvent
            .element(at: 3)

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [2])
    }

    func test10() throws {
        // Write the code to convert `sameValueEvent` so that the test passes
        let answer = sameValueEvent
            .filter { _ in false }

        // ↓↓ Please do not edit below from here ↓↓
        let result = try answer.toBlocking().toArray()
        XCTAssertEqual(result, [], "Only completed")
    }
}
