//Solution goes in Sources
import Foundation

struct Matrix {
  let str: String
  init(_ string: String) {
    str = string
  }
  
  var rows: [[Int]] {
    var row = [[Int]]()
    let split: [String] = str.components(separatedBy: "\n")
    
    for s in split {
      var arr = [Int]()
      let split2: [String] = s.components(separatedBy: " ")
      for i in split2 {
        arr.append(Int(i)!)
      }
      row.append(arr)
    }
    return row
  }
  
  var columns: [[Int]] {
    var column = [[Int]]()
    for row in rows {
      for i in 0..<row.count {
        column.append([])
        column[i].append(row[i])
      }
    }
    return column
  }
}
