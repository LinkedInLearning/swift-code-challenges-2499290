// Property Wrapper zum UserDefaults-Zugriff erstellen

// Lösung 1
import Foundation

@propertyWrapper
struct UserDefaultsStorage<T> {
    private let key: String

    var wrappedValue: T? {
        get {
            UserDefaults.standard.value(forKey: key) as? T
        }
        nonmutating set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }

    init(wrappedValue: T? = nil, key: String) {
        self.key = key
        if let wrappedValue = wrappedValue {
            UserDefaults.standard.set(wrappedValue, forKey: key)
        }
    }
}

// Lösung 2
//import SwiftUI
//
//@propertyWrapper
//struct UserDefaultsStorage<T>: DynamicProperty {
//    @State private var value: T?
//
//    private let key: String
//
//    var wrappedValue: T? {
//        get {
//            value
//        }
//        nonmutating set {
//            UserDefaults.standard.set(newValue, forKey: key)
//            value = newValue
//        }
//    }
//
//    init(wrappedValue: T? = nil, key: String) {
//        self.key = key
//        if let wrappedValue = wrappedValue {
//            UserDefaults.standard.set(wrappedValue, forKey: key)
//            _value = State(initialValue: wrappedValue)
//        } else {
//            let wrappedValue = UserDefaults.standard.value(forKey: key) as? T
//            _value = State(initialValue: wrappedValue)
//        }
//    }
//}
