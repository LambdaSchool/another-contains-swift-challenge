import Foundation

extension String {
    
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }

    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
    
    func anotherContains(_ inputString: String) -> Bool {
        let string1 = Array(self.lowercased())
        let string2 = Array(inputString.lowercased())
        var index: [Int] = []
        if string2.count > string1.count { return false }
        for i in 0..<string1.count {
            if string1[i] == string2[0] {
                index.append(i)
            }
            //run once for each starting pos
            for x in 0..<index.count {
                //check for following chars
                yloop: for y in 0..<string2.count {
                    if string1.count-index[x] < y+1 { return false }
                    if string1[index[x]+y] != string2[y] {
                        break yloop
                    } else if y == string2.count-1 {
                        return true
                    }
                }
            }
        }
        return false
    }
}

// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false

