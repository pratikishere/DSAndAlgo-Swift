//
//  SumOfMaximumMinimumNumbersTests.swift
//  DSAndAlgo-SwiftTests
//
//  Created by Apple on 15/04/21.
//

import XCTest
import DSAndAlgo_Swift

class SumOfMaximumMinimumNumbersTests: XCTestCase {

    func test_shouldThrowErrorIfEmptyArray() {
        
        let givenArray: [Int] = []
        
        let sut = makeSUT()
        
        XCTAssertThrowsError(try sut.sum(for: givenArray))
    }
    
    func test_shouldReturnNumberIfArraySizeIsOne() {
        
        let givenArray: [Int] = [8]
        
        let sut = makeSUT()
        
        XCTAssertEqual(try sut.sum(for: givenArray), 8)
    }
    
    func test_shouldReturnSumOfMaximumAndMinimumNumer() {
        
        let givenArray: [Int] = [3, 4, 2, 5, 2, 8, 14, 15]
        
        let sut = makeSUT()
        
        XCTAssertEqual(try sut.sum(for: givenArray), 17)
    }
    
    // Helpers
    
    func makeSUT() -> SumOfMaximumMinimumNumbers {
        return SumOfMaximumMinimumNumbers()
    }
}
