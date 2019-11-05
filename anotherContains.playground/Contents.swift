import Foundation

extension String {
    func anotherContains(string: String) -> Bool {
        return self.range(of: string, options: .caseInsensitive) != nil
    }
}


// test cases
print("Where is WaLdO".anotherContains(string: "WALDO")) // true
print("Where is WaLdO".anotherContains(string: "where")) // true
print("Where is WaLdO".anotherContains(string: "is wA")) // true
print("Where is WaLdO".anotherContains(string: "nOPe"))  // false

