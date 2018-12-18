//
// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.

import Foundation

func getPalindrome() -> Int  {
    var biggest = 0
    for i in stride(from: 999, to: 100, by: -1) {
        if i * 999 < biggest {
            break
        }
        for j in stride(from: 999, to: 100, by: -1) {
            let product = i * j
            if (product > biggest && isPalindrome(num: product)) {
                biggest = product
            }
        }
    }
    return biggest
}

func isPalindrome(num: Int) -> Bool {
    let numberOfDigits = getNumberOfDigits(n: num)
    for i in 0 ... numberOfDigits / 2 {
        let first = getDigit(at: numberOfDigits - i, of: num)
        let last = getDigit(at: i + 1, of: num)
        if first != last {
            return false
        }
    }
    return true
}

func getNumberOfDigits(n: Int) -> Int {
    var numberOfDigits = 0
    var n = n
    while n > 0 {
        numberOfDigits += 1
        n /= 10
    }
    return numberOfDigits
}

func getDigit(at position: Int, of number: Int) -> Int {
    let decimal = (pow(10, position) as NSDecimalNumber).intValue
    let divider = (pow(10, position - 1) as NSDecimalNumber).intValue
    return number % decimal / divider
}


print("Largest palindrome is \(getPalindrome())")
