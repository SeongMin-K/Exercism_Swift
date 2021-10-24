import Foundation

func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let count = (100.0 - discount) / 100
    let month = Double(hourlyRate * 176)
    return round(month * count)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let count = (100.0 - discount) / 100
    var current = 0.0
    var days = 0.0
    
    while current <= budget {
        days += 1.0
        let rate = dailyRateFrom(hourlyRate: hourlyRate) * count
        current = rate * days
    }
    
    return days - 1.0
}
