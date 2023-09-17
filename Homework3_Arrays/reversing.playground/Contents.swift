//MARK: развернуть массив в обратном порядке

let myArray = [1, 2, 3, 4, 5]

//1 вариант
let new: [Int] = myArray.reversed()

//2 вариант
func reverseArray(array: [Int]) -> [Int]{
    var copyArray = array
    for i in 0..<copyArray.count/2 {
        var element = copyArray[i]
        copyArray[i] = copyArray[copyArray.count - 1 - i]
        copyArray[copyArray.count - 1 - i] = element
    }
    return copyArray
}

reverseArray(array: myArray)
