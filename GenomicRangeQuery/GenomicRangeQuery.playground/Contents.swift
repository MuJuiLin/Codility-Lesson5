
import Foundation

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    // write your code in Swift 3.0 (Linux)
    var prefixSum = Array(repeating: [Int](), count: 4)
    var result = [Int]()
    var count = Array(repeating: 0, count: 4)
    
    for i in S.characters {
        if i == "A" {
            count[0] += 1
        }
        else if i == "C" {
            count[1] += 1
        }
        else if i == "G" {
            count[2] += 1
        }
        else if i == "T" {
            count[3] += 1
        }
        
        for i in 0..<4 {
            prefixSum[i].append(count[i])
        }
        
    }
    
    for i in 0..<P.count {
        let pValue = P[i]
        let qValue = Q[i]
        
        for i in 0..<4 {
            let minValue = pValue - 1 >= 0 ? prefixSum[i][pValue - 1] : 0
            let maxValue = prefixSum[i][qValue]
            
            if maxValue - minValue > 0 {
                result.append(i+1)
                break
            }
        }
    }
    
    return result
}
