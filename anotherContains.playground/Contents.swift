import Foundation

extension String {

    func anotherContains(_ thing1: String) -> Bool {
        return self.range(of: thing1, options: .caseInsensitive) != nil
        
    }
}

// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains(""))  // false

print("blah".anotherContains("BLAH"))
