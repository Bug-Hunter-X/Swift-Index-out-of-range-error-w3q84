let array = [1, 2, 3]
if array.indices.contains(3) {
    let element = array[3] 
    print(element) //This will not execute
} else {
    print("Index out of range")
}

//Alternative solution using optional binding
if let element = array[safe: 3] {
    print(element)
} else {
    print("Index out of range")
}

//Extension for safe array access
extension Array {
    subscript (safe index: Int) -> Element? {
        guard index >= 0 && index < count else {
            return nil
        }
        return self[index]
    }
}