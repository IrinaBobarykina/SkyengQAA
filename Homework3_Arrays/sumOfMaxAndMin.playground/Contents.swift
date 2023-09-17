// MARK: вычислить сумму наибольшего члена массива с наименьшим

let myArray = [-10, 200, 3, 5]

//1  вариант
func sumMinMaxEasy (array: [Int]) -> Int{
    let max = array.max() ?? 0
    let min = array.min() ?? 0
    return max + min
}

sumMinMaxEasy(array: myArray)

//2 вариант
func sumMinMaxLonger(array: [Int]) -> Int{
    return findMax(array: array) + findMin(array: array)
}

func findMin (array:[Int]) -> Int {
    var min = array[0]
    for element in array {
        if element < min {
            min = element
        }
    }
    return min
}

func findMax (array:[Int]) -> Int {
    var max = array[0]
    for element in array {
        if element > max {
            max = element
        }
    }
    return max
}

sumMinMaxLonger(array: myArray)
