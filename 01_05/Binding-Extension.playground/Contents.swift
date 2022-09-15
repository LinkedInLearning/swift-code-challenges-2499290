// Binding-Extension zum Handling von Optionals erzeugen

import SwiftUI

// Lösung 1
extension Binding {
    func nonOptionalString(fallback: String = "") -> Binding<String> where Value == String? {
        Binding<String>(get: {
            wrappedValue ?? fallback
        }, set: {
            wrappedValue = $0
        })
    }
}

// Lösung 2
//extension Binding {
//    func nonOptional<T>(fallback: T) -> Binding<T> where Value == T? {
//        Binding<T>(get: {
//            wrappedValue ?? fallback
//        }, set: {
//            wrappedValue = $0
//        })
//    }
//
//    func nonOptionalString(fallback: String = "") -> Binding<String> where Value == String? {
//        nonOptional(fallback: fallback)
//    }
//}
