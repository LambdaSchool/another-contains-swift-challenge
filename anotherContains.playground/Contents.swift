import Foundation

extension String {
    
    func anotherContains(string: String) -> Bool {
        if self.localizedCaseInsensitiveContains(string) {
            return true
        } else {
            return false
        }
    }
    
}


// test cases
print("Where is WaLdO".anotherContains(string:"WALDO")) // true
print("Where is WaLdO".anotherContains(string:"where")) // true
print("Where is WaLdO".anotherContains(string:"is wA")) // true
print("Where is WaLdO".anotherContains(string:"nOPe"))  // false
print("Does thIs work".anotherContains(string: "s wo"))
print("My Dog's name is SiRiUs".anotherContains(string: "dog"))
print("My Dog's name is SiRiUs".anotherContains(string: "sirius"))
print("My Dog's name is SiRiUs".anotherContains(string: "Sirius"))
print("My Dog's name is SiRiUs".anotherContains(string: "names"))
print("My Dog's name is SiRiUs".anotherContains(string: "Luna"))
