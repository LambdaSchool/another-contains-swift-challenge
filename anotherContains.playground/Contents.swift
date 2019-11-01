import Foundation

extension String {
    
    func anotherContains(_ string: String) -> Bool {
        
        var result = false
        var count = 0
        
        for letter in self.lowercased() {
            for character in string.lowercased() {
                if letter == character {
                    count += 1
                    if count == string.count {
                        result = true
                    }
                }
            }
        }
        
        return result
    }
}


// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
