//Solution goes in Sources
struct Triangle {
  let triangleKind = (Equilateral:"Equilateral", Isosceles:"Isosceles", Scalene:"Scalene", ErrorKind:"ErrorKind")
  let kind: String

  init(_ first: Double, _ second: Double, _ third: Double) {
    let sides = [first, second, third].sorted()
    
    if sides[0] <= 0 || sides[0] + sides[1] < sides[2] {
      kind = triangleKind.ErrorKind
    }
    else if sides[0] == sides[2] {
      kind = triangleKind.Equilateral
    }
    else if sides[0] == sides[1] || sides[1] == sides[2] {
      kind = triangleKind.Isosceles
    }
    else {
      kind = triangleKind.Scalene
    }
  }
}
