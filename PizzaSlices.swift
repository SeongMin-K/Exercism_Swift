import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter, diameter >= 0 else { return nil }
    guard let slices = slices, slices > 0 else { return nil }
    return Double.pi * pow(diameter / 2, 2) / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let pizzaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let pizzaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    
    switch (pizzaA, pizzaB) {
    case let (a?, b?) where a > b:
        return "Slice A is bigger"
    case let (a?, b?) where a < b:
        return "Slice B is bigger"
    case let (a?, b?) where a == b:
        return "Neither slice is bigger"
    case (_?, _):
        return "Slice A is bigger"
    case (_, _?):
        return "Slice B is bigger"
    default:
        return "Neither slice is bigger"
    }
}
