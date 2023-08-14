// MARK: - ℹ️ Дан текст. Вывести в логи слова, в которых встречается буква ё

import Foundation

func findWordsWithYo(str: String) {
    var wordsInString = str.components(separatedBy: " ")
    var wordsWithYo: [String] = []
    
    for word in wordsInString{
        if word.contains("ё") || word.contains("Ё") {
            wordsWithYo.append(word.trimmingCharacters(in: .punctuationCharacters))
        }
    }
    
    print(wordsWithYo)
}


let string = "Лёня и Алёша гуляли во дворе. Потом вышел Серёжа. С ним была сестрёнка Алёнка. Серёжа нёс санки. Дети стали катать Алёнку. Потом пришли Лёва и тётя Таня. Они купили ёлку. Лёва отнёс ёлку домой и стал катать ребят на санках. Лёва вёз на санках Лёню. Потом — Алёшу. Потом — Серёжу. Потом — Алёнку. Лёва — старший. Потом ребята все вместе катали Лёву. Весёлая была прогулка!"

findWordsWithYo(str: string)
