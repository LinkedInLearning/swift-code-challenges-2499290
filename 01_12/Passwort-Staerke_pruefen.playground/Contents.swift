// Passwort-Stärke prüfen

import Foundation

func isStrongPassword(_ password: String) -> Bool {
    guard password.count >= 10 else {
        return false
    }
    let lowercaseLettersCharacterSet = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
    guard password.rangeOfCharacter(from: lowercaseLettersCharacterSet) != nil else {
        return false
    }
    let uppercaseLetterCharacterSet = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    guard password.rangeOfCharacter(from: uppercaseLetterCharacterSet) != nil else {
        return false
    }
    let numbersCharacterSet = CharacterSet(charactersIn: "1234567890")
    guard password.rangeOfCharacter(from: numbersCharacterSet) != nil else {
        return false
    }
    let specialCharactersSet = CharacterSet(charactersIn: "!@#$%^&*()-_=+\"")
    guard password.rangeOfCharacter(from: specialCharactersSet) != nil else {
        return false
    }
    return true
}

isStrongPassword("No")
isStrongPassword("123Test%")
isStrongPassword("123456Test12")
isStrongPassword("AssB12$123123")
