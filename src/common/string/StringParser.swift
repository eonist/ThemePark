import Foundation

/**
 * StringParser
 */
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
