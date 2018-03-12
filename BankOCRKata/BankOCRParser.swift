import Foundation

struct BankOCRParser {
    static let digit1 = """

|
|
"""
    static let digit2 = """
 _
 _|
|_
"""
    static let digit3 = """
 _
 _|
 _|
"""
    static let digit4 = """
 
|_|
  |
"""
    static let digit5 = """
 _
|_
 _|
"""
    static let digit6 = """
 _
|_
|_|
"""
    static let digit7 = """
 _
  |
  |
"""
    static let digit8 = """
 _
|_|
|_|
"""
    static let digit9 = """
 _
|_|
 _|
"""
    static let digit0 = """
 _
| |
|_|
"""
    static func parse(_ string: String) -> Int {
        switch string {
        case "": return 0
        case digit1: return 1
        case digit2: return 2
        case digit3: return 3
        case digit4: return 4
        case digit5: return 5
        case digit6: return 6
        case digit7: return 7
        case digit8: return 8
        case digit9: return 9
        case digit0: return 0
        default: return -1
        }
    }
}
