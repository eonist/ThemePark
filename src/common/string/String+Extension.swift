import Foundation
/**
 * String
 */
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
