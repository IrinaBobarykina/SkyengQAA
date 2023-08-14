// MARK: - ℹ️ Дана дата в формате день:месяц:год. Определить день недели.

import Foundation

enum DaysOfWeek: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

func getDayOfWeek(date: String) -> DaysOfWeek{
    var dateArray = date.components(separatedBy: ":")
    
    //safe unwrapping
    guard let day = Int(dateArray[0]) else {
        fatalError("Неверный формат дня. Придерживайтесь формата ДД:ММ:ГГГГ")
    }
    guard var month = Int(dateArray[1]) else {
        fatalError("Неверный формат месяца. Придерживайтесь формата ДД:ММ:ГГГГ")
    }
    
    guard var year = Int(dateArray[2]) else {
        fatalError("Неверный формат года. Придерживайтесь формата ДД:ММ:ГГГГ")
    }
    
    //validation
    if dateArray.count != 3  {
        fatalError("Неверный формат даты. Придерживайтесь формата ДД:ММ:ГГГГ")
    }
    
    if day < 0 || day > 31 {
        fatalError("День не может быть меньше 0 или больше 31")

    }
    
    if month < 0 || month > 12 {
        fatalError("Месяц не может быть меньше 0 или больше 12")
    }
    
    if year < 1 {
        fatalError("Год не может быть меньше 0")
    }
    
    //main algorithm
    if month == 1 || month == 2 {
        year -= 1
        month -= 10
    }
    else{
        month -= 2
    }
    
    let numberOfDay = (day + (31 * month)/12 + year + year/4 - year / 100 + year / 400) % 7
    if let dayOfWeek = DaysOfWeek(rawValue: numberOfDay) {
        return dayOfWeek
    }
    
    fatalError("Порядковый номер не соответствует ни одному дню недели")
}

let myBirthday = "05:03:1996"
print(getDayOfWeek(date: myBirthday))

