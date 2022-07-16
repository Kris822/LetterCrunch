//
//  Letter Cruncher.swift
//  Letter Cruncher
//
//  Created by Lee, Christopher on 9/18/21.
//

import Foundation

class LetterCruncher{
    
    func isValidInput(inputString: String) -> Bool {
        if inputString.count > 6 {
            return false
        } else {
            return true
        }
    }
    
    func makeDigitsString(inputString: String) -> String {
        var newString = ""
        for character in inputString {
            if character == "A" || character == "B" || character == "C"{
                newString.append("2")
            } else if character == "D" || character == "E" || character == "F"{
                newString.append("3")
            } else if character == "G" || character == "H" || character == "I"{
                newString.append("4")
            } else if character == "J" || character == "K" || character == "L"{
                newString.append("5")
            } else if character == "M" || character == "N" || character == "O"{
                newString.append("6")
            } else if character == "P" || character == "Q" || character == "R" || character == "S"{
                newString.append("7")
            } else if character == "T" || character == "U" || character == "V"{
                newString.append("8")
            } else if character == "W" || character == "X" || character == "Y" || character == "Z"{
                newString.append("9")
            } else {
                newString.append("1")
            }
        }
        return newString
    }
    
}
