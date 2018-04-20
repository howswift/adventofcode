//: Playground - noun: a place where people can play

import UIKit

var captchaInput: String   = "1234"
var numberArray: [Int] = []
var firstNumber: Int = 0
var nextNumber: Int = 0
var matchArray: [Int] = []

func solveCaptcha(input : String) {
    
    // Grab each char in the captcha
    // Convert it to a number and
    // store it in the numberArray
    for char in input {
        numberArray.append(Int(String(char))!)
    }
    
    // Compare each number in the array
    // to the next number in the array
    compareNext(numberArray)
    getMatchSum(matchArray)
}

func compareNext(_ arrayOfNumbers: [Int]) {
    for index in 0...arrayOfNumbers.count - 1 {
       
        firstNumber = arrayOfNumbers[index]
        
        if index < arrayOfNumbers.count - 1 {
            print(index)
            nextNumber = arrayOfNumbers[index + 1]
        } else if index == arrayOfNumbers.count - 1 {
            nextNumber = arrayOfNumbers[0]
        }
        
        print("First Number: \(firstNumber)")
        print("Next Number: \(nextNumber)")
        
        if firstNumber == nextNumber {
            print("Match")
            matchArray.append(firstNumber)
        } else {
            print("No Match")
        }
    }
}

func getMatchSum(_ arrayOfNumbers: [Int]) {
    let sumedArr = arrayOfNumbers.reduce(0, +)
    print("Captcha Solution: \(sumedArr)")
}

// Solve the Captcha
solveCaptcha(input: captchaInput)


