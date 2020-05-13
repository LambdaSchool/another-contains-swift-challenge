import UIKit

extension String {
    
    // Contains func
    func anotherContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased())?.isEmpty == false
    }
    // Range func
    func range(of searchStringArray: [String]){
        
        let myRange = 0...3
        
        let array = searchStringArray
        array[myRange]
        
        for index in myRange {
            print (array[index])
        }
    }
}
// anotherContains test case
print("JoSEph Edward VevERKa".anotherContains("JOSEPH")) // true

// range test case
print("".range(of: ["Hello", "My", "Name", "is", "Joe", "Veve", "rka"])) // prints only "Hello", "My", "Name", "is" (determined by my closed range provided in the function above)




