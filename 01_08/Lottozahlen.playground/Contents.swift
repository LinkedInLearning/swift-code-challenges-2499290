// Lottozahlen-Generator

// Lösung 1
func lotto() -> [Int] {
    var lotto = [Int]()
    repeat {
        let lottoValue = Int.random(in: 1...49)
        if !lotto.contains(lottoValue) {
            lotto.append(lottoValue)
        }
    } while lotto.count < 6
    return lotto
}

for _ in 1...5 {
    print(lotto())
}

// Lösung 2
//func lotto() -> [Int] {
//    var lotto: Set<Int> = []
//    repeat {
//        let lottoValue = Int.random(in: 1...49)
//        lotto.insert(lottoValue)
//    } while lotto.count < 6
//    return Array<Int>(lotto)
//}
//
//for _ in 1...5 {
//    print(lotto())
//}
