// MARK: - ℹ️ Напишите программу определяющую, является ли данный год високосным


func isLeapYear(year: Int){
    year % 4 == 0 ? print("Високосный") : print("Невисокосный")
}

let currentYear = 2013
isLeapYear(year: currentYear)
