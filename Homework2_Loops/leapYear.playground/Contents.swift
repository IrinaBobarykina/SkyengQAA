// MARK: - ℹ️ Напишите программу определяющую, является ли данный год високосным


func isLeapYear(year: Int){
    if year % 4 != 0 {
        print("Високосный")
    }
    else if year % 100 == 0 {
        if year % 400 == 0 {
            print("Високосный")
        }
        else{
            print("Невисокосный")
        }
    }
    else{
        print("Високосный")
    }    

}

let currentYear = 2013
isLeapYear(year: currentYear)
