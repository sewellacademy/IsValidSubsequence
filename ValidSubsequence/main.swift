//
//  main.swift
//  ValidSubsequence
//
//  Created by Dylan Sewell on 1/18/22.
//

import Foundation

class ProgramSubsequence {
    // O(n) time | O(1) space
    static func isValidSubsequenceWhileLoop(_ array: [Int], _ sequence: [Int]) -> Bool {
        var arrIdx = 0
        var seqIdx = 0
        
        while arrIdx < array.count, seqIdx < sequence.count {
            if array[arrIdx] == sequence[seqIdx] {
                seqIdx += 1
            }
            arrIdx += 1
        }
        return seqIdx == sequence.count
    }
    
    // O(n) time | O(1) space
    static func isValidSubsequenceForLoop(_ array: [Int], _ sequence: [Int]) -> Bool {
        var seqIdx = 0
        for value in array {
            if seqIdx == sequence.count {
                break
            }
            if value == sequence[seqIdx] {
                seqIdx += 1
            }
        }
        return seqIdx == sequence.count
    }
}

let array: [Int] = [5, 1, 22, 25, 6, -1, 8, 10]
let sequence: [Int] = [1, 6, -1, 10]

print(ProgramSubsequence.isValidSubsequenceWhileLoop(array, sequence))
print(ProgramSubsequence.isValidSubsequenceForLoop(array, sequence))

