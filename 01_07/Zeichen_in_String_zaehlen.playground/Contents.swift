// Häufigkeit eines spezifischen Zeichens innerhalb eines Strings zählen

// Lösung 1
func numberOfCharacters(for character: Character, in value: String) -> Int {
    var numberOfCharacters = 0
    for letter in value {
        if character == letter {
            numberOfCharacters += 1
        }
    }
    return numberOfCharacters
}

numberOfCharacters(for: "n", in: "Anna")
numberOfCharacters(for: "a", in: "Anna")

// Lösung 2
//func numberOfCharacters(for character: Character, in value: String, ignoreCaseSensitivity: Bool = false) -> Int {
//    var numberOfCharacters = 0
//    let valueToCheck = ignoreCaseSensitivity ? value.lowercased() : value
//    let characterToCheck = ignoreCaseSensitivity ? character.lowercased() : String(character)
//    for letter in valueToCheck {
//        if characterToCheck == String(letter) {
//            numberOfCharacters += 1
//        }
//    }
//    return numberOfCharacters
//}
//
//numberOfCharacters(for: "n", in: "Anna")
//numberOfCharacters(for: "a", in: "Anna")
//numberOfCharacters(for: "a", in: "Anna", ignoreCaseSensitivity: true)
//numberOfCharacters(for: "A", in: "Anna", ignoreCaseSensitivity: true)

// Lösung 3
//import Foundation
//
//func numberOfCharacters(for character: Character, in value: String, ignoreCaseSensitivity: Bool = false) -> Int {
//    let valueToCheck = ignoreCaseSensitivity ? value.lowercased() : value
//    let characterToCheck = ignoreCaseSensitivity ? character.lowercased() : String(character)
//    let valueComponents = valueToCheck.components(separatedBy: characterToCheck)
//    return valueComponents.count - 1
//}
//
//numberOfCharacters(for: "n", in: "Anna")
//numberOfCharacters(for: "a", in: "Anna")
//numberOfCharacters(for: "a", in: "Anna", ignoreCaseSensitivity: true)
//numberOfCharacters(for: "A", in: "Anna", ignoreCaseSensitivity: true)
