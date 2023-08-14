// MARK: - ℹ️ Найдите все делители данного натурального числа, а также их количество и сумму.

func findDivisors (num: Int) -> [Int]{
    var divisorsArray: [Int] = []
    for i in 1...num{
        if num % i != 0 {
            continue
        }
        divisorsArray.append(i)
    }
        return divisorsArray
}

func sumOfDivisors (array: [Int]) -> Int {
    var sum = 0
    for i in array{
        sum += i
    }
    return sum
}

let number = 60
let divisors = findDivisors(num: number)

print("Делители числа \(number): \(divisors)")
print("Количество делителей: \(divisors.count)")
print("Сумма делителей: \(sumOfDivisors(array: divisors))")
