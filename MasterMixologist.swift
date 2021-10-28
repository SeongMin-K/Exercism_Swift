func timeToPrepare(drinks: [String]) -> Double {
    var result = 0.0
    for drink in drinks {
        switch drink {
        case "beer", "soda", "water":
            result += 0.5
        case "shot":
            result += 1.0
        case "mixed drink":
            result += 1.5
        case "fancy drink":
            result += 2.5
        case "frozen drink":
            result += 3.0
        default:
            result += 0
        }
    }
    return result
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var wedges = 0
    var count = 0
    for lime in limes {
        if wedges >= needed {
            break
        }
        count += 1
        switch lime {
        case "small":
            wedges += 6
        case "medium":
            wedges += 8
        case "large":
            wedges += 10
        default:
            wedges += 0
        }
    }
    return count
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var result = remainingOrders
    var order:[String]
    var timeLeft = Double(minutesLeft)
    while timeLeft > 0 && !result.isEmpty{
        order = result.removeFirst()
        timeLeft -= timeToPrepare(drinks: order)
    }
    return result
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var beer: (first: String, last: String, total: Int)? = nil
    var soda: (first: String, last: String, total: Int)? = nil
    for order in orders {
        if order.drink == "beer" {
            if beer == nil {
                beer = (first: order.time, last: order.time, total: 1)
            }
            else {
                beer!.last = order.time
                beer!.total += 1
            }
        }
        else if order.drink == "soda" {
            if soda == nil {
                soda = (first: order.time, last: order.time, total: 1)
            }
            else {
                soda!.last = order.time
                soda!.total += 1
            }
        }
    }
    return (beer, soda)
}
