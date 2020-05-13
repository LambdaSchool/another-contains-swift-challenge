import Foundation

extension String {
    func anotherContains(_ target: String) -> Bool {
        
        let stringA = self.lowercased()
        let stringB = target.lowercased()
        
        var anotherContains: Bool {
            return stringA.isEqual(stringB)
        }
        return anotherContains
    }
}

//unfortunately ran out of time to get it working properly D: 


// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
