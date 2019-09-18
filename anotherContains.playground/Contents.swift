import Foundation

//extension String {
//    func anotherContains(_ text: String) -> Bool{
//        var answer: Bool = true
//        for letter in text{
//            var bool: Bool? {
//                switch self.lowercased() {
//                case text.description = "where", "is", "WaLdO", "is wA":
//                   answer = true
//                    return answer
//                case text.description = "nOPe":
//                    answer = false
//                    return answer
//                default:
//                    return nil
//                }
//            }
//        }
//        return answer
//    }
//}
//extension String {
//    func anotherContains(_ element: String) -> Bool {
//        if element.lowercased() == self.description.lowercased(){
//            return true
//        }else{
//            return false
//        }
//    }
//}

func anotherContains(_ userSubString: String) -> Bool {
    let string = localizedStandardRange(of: userSubString)
    if (string != nil) {
        return true
    } else {
        return false
    }
}
}



// test cases
print("Where is WaLdO".anotherContains("WALDO")) // true
print("Where is WaLdO".anotherContains("where")) // true
print("Where is WaLdO".anotherContains("is wA")) // true
print("Where is WaLdO".anotherContains("nOPe"))  // false

