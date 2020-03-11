import UIKit

extension String {
    func anotherContains(_ i: String) -> Bool { // TODO: Why can't I use Character here?
        let lhs = self.lowercased()
        let rhs = i.lowercased()

        let rangeResult = lhs.range(of: rhs)
        
        // TODO: Ranges are weird. Help text didn't line up with this IMHO
        guard let _ = rangeResult else { return false }
        
        return true
    }
}

// Original is case sensitive.
//print("Where is WaLdO".contains("WALDO")) // false
//print("Where is WaLdO".contains("WaLdO")) // true

// My version is not
print("Where is WaLdO".anotherContains("WaLdO")) // true
print("Where is WaLdO".anotherContains("WaLdOo")) // false

