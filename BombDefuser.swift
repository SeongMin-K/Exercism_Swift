let flip: ((String, String, String)) -> (String, String, String) = {
    ($0.1, $0.0, $0.2)
}

let rotate: ((String, String, String)) -> (String, String, String) = {
    ($0.1, $0.2, $0.0)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    { num, wires in
        var result = wires
        for i in 0..<8 {
            let bit = num & (1 << i)
            let shuffler = bit == 0 ? flipper : rotator
            result = shuffler(result)
        }
        return result
    }
}
