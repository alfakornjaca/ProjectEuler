// Problem 1
// Multiples of 3 and 5
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

func sumOfNumbers(below limit: Int, divisibleBy: [Int]) -> Int {
    let numbers = (1..<limit).filter {
        for divisor in divisibleBy {
            if $0 % divisor == 0 {
                return true
            }
        }
        return false
    }
    return numbers.reduce(0, +)
}

print(sumOfNumbers(below: 10, divisibleBy: [3, 5]))
print(sumOfNumbers(below: 1000, divisibleBy: [3, 5]))
print(sumOfNumbers(below: 10, divisibleBy: [2]))

