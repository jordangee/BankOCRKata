import XCTest
@testable import BankOCRKata

class BankOCRKataTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    func testEmptyString() {
        let input = ""
        let result = BankOCRParser.parse(input)
        XCTAssertEqual(result, 0)
    }
    
    func testNonsense() {
        let devilFive = """
|_|
|_
 _|
"""
        let result = BankOCRParser.parse(devilFive)
        XCTAssertEqual(result, -1)
    }
    
    func testSingleDigits() {
        let digit1 = """

|
|
"""
        let digit2 = """
 _
 _|
|_
"""
        let digit3 = """
 _
 _|
 _|
"""
        let digit4 = """
 
|_|
  |
"""
        let digit5 = """
 _
|_
 _|
"""
        let digit6 = """
 _
|_
|_|
"""
        let digit7 = """
 _
  |
  |
"""
        let digit8 = """
 _
|_|
|_|
"""
        let digit9 = """
 _
|_|
 _|
"""
        let digit0 = """
 _
| |
|_|
"""
        let result1 = BankOCRParser.parse(digit1)
        XCTAssertEqual(result1, 1)
        
        let result2 = BankOCRParser.parse(digit2)
        XCTAssertEqual(result2, 2)
        
        let result3 = BankOCRParser.parse(digit3)
        XCTAssertEqual(result3, 3)
        
        let result4 = BankOCRParser.parse(digit4)
        XCTAssertEqual(result4, 4)
        
        let result5 = BankOCRParser.parse(digit5)
        XCTAssertEqual(result5, 5)
        
        let result6 = BankOCRParser.parse(digit6)
        XCTAssertEqual(result6, 6)
        
        let result7 = BankOCRParser.parse(digit7)
        XCTAssertEqual(result7, 7)
        
        let result8 = BankOCRParser.parse(digit8)
        XCTAssertEqual(result8, 8)
        
        let result9 = BankOCRParser.parse(digit9)
        XCTAssertEqual(result9, 9)
        
        let result0 = BankOCRParser.parse(digit0)
        XCTAssertEqual(result0, 0)
    }
}
