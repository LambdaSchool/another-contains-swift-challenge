import Foundation


extension String {
    var WaLdO: String {return "WALDO"}
}


func contains(where predicate: (WaLdO) throws -> Bool) rethrows -> Bool {
    if string.contains("WALDO") {
    print("Where is WaLdO".anotherContains("WALDO")) else {
        return
        }
    }
}

// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false
