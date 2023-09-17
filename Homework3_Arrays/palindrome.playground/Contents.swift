import Foundation

let myArray = ["tenet", "довод", "кошка", "cat"]

//1 вариант
func findPalindromeEasy(array: [String]) -> [String]{
    var palindromes: [String] = []
    
    for element in array{
        if element == String(element.reversed()){
            palindromes.append(element)
        }
    }
    return palindromes
}

findPalindromeEasy(array: myArray)

//2 вариант
func reverseString(string: String) -> String{
    let stringAsArray = Array(string)
    let reversedStringAsArray = reverseArray(array: stringAsArray)
    return String(reversedStringAsArray)
}

func reverseArray(array: [Character]) -> [Character]{
    var copyArray = array
    for i in 0..<copyArray.count/2 {
        var element = copyArray[i]
        copyArray[i] = copyArray[copyArray.count - 1 - i]
        copyArray[copyArray.count - 1 - i] = element
    }
    return copyArray
}

func findPalindromeLonger(array: [String]) -> [String]{
    var palindromes: [String] = []
    
    for element in array{
        if element == reverseString(string: element){
            palindromes.append(element)
        }
    }
    return palindromes
}

findPalindromeLonger(array: myArray)



