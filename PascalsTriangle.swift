//Solution goes in Sources
struct PascalsTriangle {
    let rows: [[Int]]
    init(_ size: Int) {
        var triangle = [[1]]
        for row in 1..<size {
            let upper = triangle[row - 1]
            let len = 0..<upper.count - 1
            let mid = len.map({ upper[$0] + upper[$0 + 1] })
            let row = [1] + mid + [1]
            triangle.append(row)
        }
        rows = triangle
    }
}
