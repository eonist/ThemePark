
import Foundation

//Global generic decode method for Decodable
func decode<T:Decodable>(data: Data) throws -> T {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
}

//Encodable Extension
extension Encodable {
    func encode() throws -> Data {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return try encoder.encode(self)
    }
}

class JSONUtils{
    /**
     * Converts json string to json object
     * "{\"title\":\"doctor\"}".json //Output: a JSON object
     */
    static func json(_ str:String) -> Any?{
        guard let data:Data = str.data(using: String.Encoding.utf8, allowLossyConversion: false) else{return nil}
        if let json:Any = try? JSONSerialization.jsonObject(with: data, options: []) {
            return json
        }else {
            fatalError("JSON is format wrongly: \(str)")
        }
    }
}
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
    static func content(_ path:String)->String?{
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
    static func data(_ path:String) -> Data?{
        guard let str:String = FileParser.content(path) else {return nil}
        return str.data(using: .utf8)
    }
}
