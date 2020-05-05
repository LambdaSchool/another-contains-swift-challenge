import Foundation

extension String {
    func anotherContains(_ searchString: String) -> Bool {
        let searchString = searchString.lowercased()
        let string = self.lowercased()
        let check = string.range(of: searchString)
        if check == nil {
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
print("Hello".anotherContains("lo"))
