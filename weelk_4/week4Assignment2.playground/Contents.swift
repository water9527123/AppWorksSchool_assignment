import Cocoa

func isOdd(number : Int) -> Bool {
    return  ((number % 2) == 0)
}
isOdd(number: 3)
var ISODD = { (number: Int) -> Bool in
    ((number % 2) == 0)
}
ISODD(3)
