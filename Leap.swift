//Solution goes in Sources
struct Year {
    let year: Int
    init(calendarYear: Int) {
        year = calendarYear
    }
    
    var isLeapYear: Bool {
        (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    }
}
