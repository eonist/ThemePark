
import Foundation
class StringParser{
    /**
     * substring("Hello from Paris, Texas!!!", 11,15); // output: Pari
     */
    static func subString(_ str:String,_ beginning:Int,_ end:Int)->String{
        let range = str.stringRange(str, beginning, end:end)
        let retVal = str[range.start..<range.end]//swift 4 upgrade, was: return str.substring(with:range)
        return String(retVal)
    }
    /**
     * substr("Hello from Paris, Texas!!!",11,15); // output: Paris, Texas!!!
     */
    static func subStr(_ str:String, _ beginning:Int,_ len:Int)->String{
        let range = str.stringRange(str, beginning, len:len)
        let retVal = str[range.start..<range.end]//swift 4 upgrade, was: return str.substring(with:range)
        return String(retVal)
    }
    /**
     * Returns the cooresponding String.Index for PARAM: index:Int
     * Example: "🚀ship".idx(1)//the String.Index between 🚀 and ship
     */
    static func idx(_ str:String,_ index:Int) -> String.Index {
        return str.index(str.startIndex, offsetBy: index)/*Upgraded to swift 3-> was: startIndex.advancedBy*/
    }
}
extension String {
    func subStr(_ i:Int,_ len:Int)->String{/*Convenince*/
        return StringParser.subStr(self, i, len)
    }
    func subString(_ beginning:Int,_ end:Int)->String{/*Convenince*/
        return StringParser.subString(self,beginning,end)
    }
    func idx(_ index:Int) -> String.Index{
        return StringParser.idx(self, index)
    }
    func stringRange(_ str:String,_ beginning:Int, end:Int) -> Range<String.Index>{
        let startIndex = str.idx(beginning)
        let endIndex = str.idx(end/*-beginning*/)//<--this was a bug
        return startIndex..<endIndex
    }
    func stringRange(_ str:String,_ beginning:Int, len:Int) -> Range<String.Index>{
        let startIndex = str.idx(beginning)
        let endIndex = str.idx(beginning+len)
        return startIndex..<endIndex//swift 3 upgrade, was->Range(start:startIndex,end:endIndex)
    }
}
extension Range {
    var start:Bound {return self.lowerBound}//(0..<4).lowerBound -> 0
    var end:Bound {return self.upperBound}//(0..<4).upperBound -> 4
}
