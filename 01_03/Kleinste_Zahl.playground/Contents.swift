// Kleinste Zahl innerhalb eines Integer-Arrays ermitteln

// Lösung 1
func smallestValue(in values: [Int]) -> Int {
    let orderedValues = values.sorted(by: { $0 < $1 })
    return orderedValues.first!
}

let testValues = [99, 3, 118, 19]
smallestValue(in: testValues)

// Lösung 2
//func smallestValue(in values: [Int]) -> Int? {
//    guard !values.isEmpty else {
//        return nil
//    }
//    let orderedValues = values.sorted(by: { $0 < $1 })
//    return orderedValues.first
//}
//
//let testValues = [99, 3, 118, 19]
//smallestValue(in: testValues)
