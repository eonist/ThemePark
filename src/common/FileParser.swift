import Foundation

class FileParser{
   /**
    * Returns string content from a file at file location "path"
    * PARAM: path is the file path to the file in this format: (User/John/Desktop/test.txt)
    * IMPORTANT: ⚠️️ Remember to expand the path with the .tildePath call, if it's a tilde path
    * NOTE: Supports syntax like this: /Users/John/Desktop/temp/../test.txt (the temp folder is excluded in this case)
    * let path = "//Users/<path>/someFile.xml"
    * var err: NSError?
    * let content = String.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: &err)
    * EXAMPLE: FileParser.content("~/Desktop/temp.txt".tildePath)//
    */
   static func content(path:String) -> String?{
      do {
         let content = try String(contentsOfFile:path, encoding:String.Encoding.utf8) as String//encoding: NSUTF8StringEncoding
         return content
      } catch {
         return nil
      }
   }
   /**
    * New
    */
   static func data(path:String) -> Data?{
      guard let str:String = FileParser.content(path: path) else {return nil}
      return str.data(using: .utf8)
   }
}