// Dezimalzahl in Binärzahl umwandeln

// Lösung 1
func binaryValue(for number: UInt8) -> String {
    String(number, radix: 2)
}

binaryValue(for: 3)
binaryValue(for: 19)
binaryValue(for: 255)

// Lösung 2
//func binaryValue(for number: UInt8) -> String {
//    var binaryValue = String(number, radix: 2)
//    let padding = 8 - binaryValue.count
//    binaryValue = String(repeating: "0", count: padding) + binaryValue
//    return binaryValue
//}
//
//binaryValue(for: 3)
//binaryValue(for: 19)
//binaryValue(for: 255)
