//MARK: сортировка массива по возрастанию/убыванию

import Foundation

let myArray = [1, 5, 6, 13, 0, -15]

//1 вариант
myArray.sorted(by: >)
myArray.sorted(by: <)

//2 вариант
func sortAsc(array: [Int]) -> [Int] {
    var copyArray = array
    for i in 0..<copyArray.count - 1{
        for j in 0..<copyArray.count - i - 1 {
            if copyArray[j] > copyArray[j + 1] {
                let temp = copyArray[j]
                copyArray[j] = copyArray[j + 1]
                copyArray[j + 1] = temp
            }
        }
    }
    return copyArray
}

func sortDesc(array: [Int]) -> [Int]{
    var copyArray = array
    for i in 0..<copyArray.count - 1{
        for j in 0..<copyArray.count - i - 1 {
            if copyArray[j] < copyArray[j + 1] {
                let temp = copyArray[j]
                copyArray[j] = copyArray[j + 1]
                copyArray[j + 1] = temp
            }
        }
    }
    return copyArray
}

sortAsc(array: myArray)
sortDesc(array: myArray)



