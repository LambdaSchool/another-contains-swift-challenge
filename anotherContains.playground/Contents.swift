import Foundation

extension String {
    func anotherContains(_ element: String) -> Bool {
        let lowerCasedSelf: String = self.lowercased()
        let lowerCasedElement: String = element.lowercased()
        let morphedSelf = NSString(string: lowerCasedSelf)
        
        if morphedSelf.range(of: lowerCasedElement) == nil {
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


