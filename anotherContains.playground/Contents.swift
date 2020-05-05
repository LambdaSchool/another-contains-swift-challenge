import Foundation

extension String {
    func anotherContains(_ n: String) -> Bool {
        let stringRange = range(of: n, options: .caseInsensitive, range: .none, locale: .none)
        return stringRange != nil
    }
    
}


// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
