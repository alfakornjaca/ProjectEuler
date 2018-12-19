//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

func getSmallestEvenlyDivisable() -> Int {
    var number = 2520 // the smallest number that can be divided by each number form 1 to 10
    while true {
        if number % 20 == 0 { // also divisable by 1, 2, 4, 5, 10
            if number % 19 == 0 {
                if number % 18 == 0 {  // also 3, 6, 9
                    if number % 17 == 0 {
                        if number % 16 == 0 { // also 8
                            if number % 15 == 0 {
                                if number % 14 == 0 { // also 7
                                    if number % 13 == 0 {
                                        if number % 12 == 0 {
                                            if number % 11 == 0 {
                                                return number
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        number += 2520
    }
}

print(getSmallestEvenlyDivisable())
