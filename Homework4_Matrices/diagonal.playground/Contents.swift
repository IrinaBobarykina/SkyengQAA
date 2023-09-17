//MARK: заменить числа по обеим диагоналям на противоположные по знаку

let myMatrix = [[1,2,3],[5,6,7],[7,8,9]]

func changeDiagonalElements(matrix: [[Int]]) -> [[Int]]{
    
    var copyMatrix = matrix
    for i in 0..<copyMatrix.count{
        for j in 0..<copyMatrix.count{
            if i == j {
                copyMatrix[i][j] = -copyMatrix[i][j]
            }
        }
    }
    return copyMatrix
}

changeDiagonalElements(matrix: myMatrix)
