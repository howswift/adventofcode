//: Playground - noun: a place where people can play

import UIKit

var captchaInput : String   = "1122334455"
var numberArray : [Int] = []

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
}

func compareNext(_ arrayOfNumbers : [Int]) {
    for index in arrayOfNumbers {
        print(index)
    }
}

// Solve the Captcha
solveCaptcha(input: captchaInput)
