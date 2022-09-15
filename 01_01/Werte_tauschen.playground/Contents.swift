// Werte tauschen

var firstValue = 19
var secondValue = 99

swapValues(&firstValue, &secondValue)

print("First value: \(firstValue)")
print("Second value: \(secondValue)")

// Lösung 1
func swapValues<V>(_ firstValue: inout V, _ secondValue: inout V) {
    let tmpFirstValue = firstValue
    firstValue = secondValue
    secondValue = tmpFirstValue
}

// Lösung 2
//func swapValues<V>(_ firstValue: inout V, _ secondValue: inout V) {
//    (firstValue, secondValue) = (secondValue, firstValue)
//}
