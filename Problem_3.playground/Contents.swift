//The prime factors of 13195 are 5, 7, 13 and 29.
//
//What is the largest prime factor of the number 600851475143 ?

import UIKit

func maxPrimeFactorOf(_ number: Int) -> Int {
    var max = 1
    
    // reasign number to a local variable so it can be changed
    var n = number
    
    // if number is even, devide by 2 until an odd number is reached
    while n % 2 == 0 {
        max = 2
        n = n / 2
    }
    
    // keep track of the largest number it can be divided by
    for i in stride(from: 3, to: Int(sqrt(Double(number))), by: 2) {
        while n % i == 0 {
            max = i
            n = n / i
        }
    }
    
    // if, after the above devisions, the number is still greater than 2,
    // then it is itself a prime
    if n > 2 {
        max = n
    }
    
    // return the greatest prime the number can be divided by
    // if max == number, then the number is a prime
    return max
}

print(maxPrimeFactorOf(13195))
print(maxPrimeFactorOf(600851475143))
