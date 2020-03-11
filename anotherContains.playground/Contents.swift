import Foundation

extension String {
    func anotherContains(_ myString: String) -> Bool {
        
        var doesItMatch = false

        let oneWord = components(separatedBy: " ").joined()
        let oneAnswer = myString.components(separatedBy: " ").joined()
        
        print(oneWord)
        print(oneAnswer)
        
        if oneWord.lowercased().range(of: oneAnswer.lowercased()) != nil {
            doesItMatch = true
        }
        
        return doesItMatch
    }
}


// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
