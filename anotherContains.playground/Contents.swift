import Foundation

extension String {
    func anotherContains(_ substr: String) -> Bool {
        let len = substr.count
        if len > self.count {
            return false
        } else if len == self.count {
            if substr.lowercased() == self.lowercased() {
                return true
            } else {
                return false
            }
        }

        if self.lowercased().firstIndex(of: substr.lowercased()[startIndex]) == nil {
            // check to see if the first letter in the substring even exists
            return false
        }
              
        var strElems: [Element] = []
        var subElems: [Element] = []
        
        for e in self {
            strElems.append(e)
        }
        
        for e in substr {
            subElems.append(e)
        }
        
        for i in 0...(strElems.count - len) {
            var test = true
            for n in 0..<len {
                if strElems[i + n].lowercased() != subElems[n].lowercased() {
                    test = false
                    break
                }
            }
            if test == true {
                return true
            }
        }
        return false
    }
}


// test cases
print("abc".anotherContains("abc"))
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false


