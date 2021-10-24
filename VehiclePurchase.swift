import Foundation

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let budget = round(price / 12 / 5)
    
    switch budget {
    case 0..<monthlyBudget:
        return "Yes! I'm getting a \(vehicle)"
    case monthlyBudget..<monthlyBudget + 10:
        return "I'll have to be frugal if I want a \(vehicle)"
    default:
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 0:
        return "We do not issue licenses for those types of vehicles"
    case 2, 3:
        return "You will need a motorcycle license for your vehicle"
    case 4, 6:
        return "You will need an automobile license for your vehicle"
    default:
        return "You will need a commercial trucking license for your vehicle"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    let base = max(msrp, 25000)
    switch yearsOld {
    case 0:
        return base / 100
    case 1..<10:
        return (base - base / 10 * yearsOld) / 100
    default:
        return 25
    }
}
