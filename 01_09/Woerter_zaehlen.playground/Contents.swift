// Wörter innerhalb eines Satzes zählen

import Foundation

func numberOfWords(in string: String) -> Int {
    let components = string.components(separatedBy: .whitespacesAndNewlines)
    return components.count
}

let firstSentence = "SwiftUI ist ein neues Framework zur Gestaltung von Nutzeroberflächen."
let secondSentence = "Ein zweiter, simpler Test."

numberOfWords(in: firstSentence)
numberOfWords(in: secondSentence)
