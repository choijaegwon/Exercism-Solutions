import Foundation

struct Squares {
    private let limit: Int
    
    init(_ limit: Int) {
        self.limit = limit
    }

    var squareOfSum: Int {
        get {
            let sum = (limit * (limit + 1) / 2)
            return sum * sum
        }
    }

    var sumOfSquares: Int {
        get {
            (limit * (limit + 1) * (limit * 2 + 1)) / 6
        }
    }
    
    var differenceOfSquares: Int {
        get {
           squareOfSum - sumOfSquares
        }
    }
}