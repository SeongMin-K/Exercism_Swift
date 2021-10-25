// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}


// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}


// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var noodlesCount = 0
    var sauceCount = 0.0
    for layer in layers {
        if layer == "noodles" {
            noodlesCount += 3
        } else if layer == "sauce" {
            sauceCount += 0.2
        }
    }
    return (noodles: noodlesCount, sauce: sauceCount)
}


// TODO: define the 'toOz' function
func toOz(_ liters: inout (noodles: Int, sauce: Double)) {
    liters.sauce *= 33.814
}


// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    var whiteCount = 0
    var redCount = 0
    for layer in layers {
        if layer == "mozzarella" || layer == "ricotta" || layer == "béchamel" {
            whiteCount += 1
        } else if layer == "meat" || layer == "sauce"{
            redCount += 1
        }
    }
    return redCount > whiteCount
}
