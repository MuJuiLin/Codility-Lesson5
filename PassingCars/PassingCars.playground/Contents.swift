
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    var startIndex = -1
    var multiplyCount = 0
    var result = 0
    
    for (index, number) in A.enumerated() {
        if number == 0 {
            startIndex = index
            multiplyCount += 1
        }
        else if startIndex != -1 {
            result += 1 * multiplyCount
            
            if result > 1000000000 {
                return -1
            }
        }
    }
    
    return result
}
