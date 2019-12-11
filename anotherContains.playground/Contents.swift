import Foundation

extension String {
    func anotherContains(_ str: String) -> Bool {
        guard let _ = self.range(of: str, options: .caseInsensitive) else { return false }
        return true
    }
}


// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
