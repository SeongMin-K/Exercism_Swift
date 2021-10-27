//Solution goes in Sources
struct SpaceAge {
    var seconds: Double
    init(_ second: Double) {
        seconds = second
    }
    
    let earth: Double = 31557600
    
    var onMercury: Double {
        let mercury = earth * 0.2408467
        return seconds / mercury
    }
    var onVenus: Double {
        let venus = earth * 0.61519726
        return seconds / venus
    }
    var onEarth: Double {
        return seconds / earth
    }
    var onMars: Double {
        let mars = earth * 1.8808158
        return seconds / mars
    }
    var onJupiter: Double {
        let jupiter = earth * 11.862615
        return seconds / jupiter
    }
    var onSaturn: Double {
        let saturn = earth * 29.447498
        return seconds / saturn
    }
    var onUranus: Double {
        let uranus = earth * 84.016846
        return seconds / uranus
    }
    var onNeptune: Double {
        let neptune = earth * 164.79132
        return seconds / neptune
    }
}
