//MARK: Пусть сберегательные банки по бессрочным вкладам выплачивают p % годовых от суммы вклада, присоединяемых к вкладу. Если вкладчик не снимает деньги с вклада, то проценты ежегодно начисляются со все большей суммы. Найдите величину вклада через m лет.

/* Простые проценты считаются как:
 
        diff =  deposit * percent * depositDays / daysAYear / 100
 
 Т.к. у нас вклад на годы, то depositDays всегда будет равен daysAYear, неважно, високосный год или
 нет, то эти параметры из формулы опускаю.
 
*/


import Foundation
let startDeposit: Double = 10000
let depositInterestRate: Double = 10
let depositYears = 5

//использую for-in
func saveUpMoney (deposit: Double, interesetRate: Double, years: Int) -> Double {
    var sum = deposit
    for _ in 1...years {
        sum += sum * interesetRate / 100
        }
    return sum
}

//использую repeat-while (лучше места не придумала)
//func saveUpMoney (deposit: Double, interesetRate: Double, years: Int) -> Double {
//    var sum = deposit
//    var years = years
//
//    repeat {
//        sum += sum * interesetRate / 100
//        years -= 1
//    } while years != 0
//    return sum
//}

print(saveUpMoney(deposit: startDeposit, interesetRate: depositInterestRate, years: depositYears))
