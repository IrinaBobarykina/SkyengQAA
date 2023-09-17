//MARK: сортировать значения матрицы по возрастанию/убыванию

let myMatrix = [[8,6,4], [5,2,3], [7,1,9]]

func sortMatrix(matrix: [[Int]]) -> [[Int]]{
    var copyMatrix = matrix
    let n = copyMatrix.count
    let m = copyMatrix[0].count
    let size = n * m
    
    //нахуя а главное зачем
    
    for i in 0..<size - 1 {
        for j in 0..<size - 1 - i {
            if copyMatrix[j / m][j % m] > copyMatrix[(j + 1) / m][(j + 1) % m] {
                let temp = copyMatrix[(j + 1) / m][(j + 1) % m]
                copyMatrix[(j + 1) / m][(j + 1) % m] = copyMatrix[j / m][j % m]
                copyMatrix[j / m][j % m] = temp
            }
        }
    }
    return copyMatrix
}

sortMatrix(matrix: myMatrix)

