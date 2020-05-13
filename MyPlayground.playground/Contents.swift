import UIKit

extension String {
    
    // Contains func
    func anotherContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased())?.isEmpty == false
    }
    // Range func
    func range(of searchStringArray: [String], range: ClosedRange<Int>){
        
        let myRange = range
        
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
let rangeTest = ["Hey How", "Are You", "Doing", "Today", "?"]
print("".range(of: rangeTest, range: 0...2))
// prints only index 0...2 of rangeTest array of strings (determined by my closed range provided in the function above)




