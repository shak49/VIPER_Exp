import UIKit


var numbers = [2, 3, 7, 5, 6, 9]

func findTheSecondLargest(input: [Int]) -> Int {
    var array = [Int]()
    let max = input.max()
    for i in input {
        if i != max {
            array.append(i)
        }
    }
    guard let secondMax = array.max() else { return 0 }
    print("--<  \(secondMax)  >--")
    return secondMax
}

findTheSecondLargest(input: numbers)

