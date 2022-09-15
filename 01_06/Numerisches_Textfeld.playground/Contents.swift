// Zahleneingaben in einem Textfeld verarbeiten

import SwiftUI

// Lösung 1
struct NumericText {
    var value: Int

    var stringRepresentation: String {
        didSet {
            let numericValue = stringRepresentation.filter { $0.isNumber }
            value = Int(numericValue) ?? 0
        }
    }

    init(value: Int = 0) {
        self.value = value
        stringRepresentation = "\(value)"
    }
}

struct ContentView: View {
    @State private var numericText = NumericText()

    var body: some View {
        VStack {
            TextField("Value", text: $numericText.stringRepresentation)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .onSubmit {
                    numericText.stringRepresentation = "\(numericText.value)"
                }
            Text("Value = \(numericText.value)")
        }
        .padding()
    }
}

// Lösung 2
//struct ContentView: View {
//    @State var value = 0
//
//    var body: some View {
//        VStack {
//            TextField("Value", value: $value, formatter: NumberFormatter())
//                .textFieldStyle(.roundedBorder)
//                .keyboardType(.numberPad)
//            Text("Value = \(value)")
//        }
//        .padding()
//    }
//}
