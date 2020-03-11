import Foundation

extension String {
    func anotherContains(_ searchString: String) -> Bool {
        let searchString = searchString.lowercased()
        let string = self.lowercased()
        let test = string.range(of: searchString)
        if test == nil {
            return false
        } else {
            return true
        }
        
    }
}


// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
