
import Foundation

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    // write your code in Swift 3.0 (Linux)
    var result = [Int]()
    
    for i in 0..<P.count {
        let pValue = P[i]
        let qValue = Q[i]
        guard pValue <= S.characters.count && qValue <= S.characters.count else {
            return [Int]()
        }
        
        let start = S.index(S.startIndex, offsetBy: pValue)
        let end = S.index(S.endIndex, offsetBy: -(S.characters.count - qValue) + 1)
        let range = start..<end
        
        let subString = S.substring(with: range)
        
        if subString.contains("A") {
            result.append(1)
        }
        else if subString.contains("C") {
            result.append(2)
        }
        else if subString.contains("G") {
            result.append(3)
        }
        else if subString.contains("T") {
            result.append(4)
        }
    }
    
    return result
}
