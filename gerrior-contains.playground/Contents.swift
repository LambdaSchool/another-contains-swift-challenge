import UIKit

extension String {
    func anotherContains(_ i: String) -> Bool {
        return self.contains(i)
    }
}

// Original is case sensitive.
print("Where is WaLdO".contains("WALDO")) // false
print("Where is WaLdO".contains("WaLdO")) // true

// My version
print("Where is WaLdO".anotherContains("WaLdO")) // true

