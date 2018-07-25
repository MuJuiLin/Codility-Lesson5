
import Foundation

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    let plus = A % K == 0 ? 1 : 0
    return B / K - A / K + plus
}
