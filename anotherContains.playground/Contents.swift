import Foundation

extension String {
    func anotherContains(_ userSubString: String) -> Bool {
        let test = localizedStandardRange(of: userSubString)
        if (test != nil) {
            return true
        } else {
            return false
        }
    }
}



// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
