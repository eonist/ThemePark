import Foundation

public class FileParser {
    /**
     * Returns string content from a file at file location "path"
     * - Param: path is the file path to the file in this format: (User/John/Desktop/test.txt)
     * - Important: ⚠️️ Remember to expand the path with the .tildePath call, if it's a tilde path
     * - Note: Supports syntax like this: /Users/John/Desktop/temp/../test.txt (the temp folder is excluded in this case)
     * ## Examples:
     * let path = "//Users/<path>/someFile.xml"
     * var err: NSError?
     * let content = String.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: &err)
     * FileParser.content("~/Desktop/temp.txt".tildePath)//
     */
    public static func content(path: String) -> String? {
        do {
            let content = try String(contentsOfFile: path, encoding: .utf8) as String//encoding: NSUTF8StringEncoding
            return content
        } catch {
            return nil
        }
    }
    /**
     * New
     */
    public static func data(path: String) -> Data? {
        guard let str: String = FileParser.content(path: path) else { return nil }
        return str.data(using: .utf8)
    }
}
