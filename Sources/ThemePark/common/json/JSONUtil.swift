import Foundation

public class JSONUtil {
    /**
     * Converts json string to json object
     * "{\"title\":\"doctor\"}".json //Output: a JSON object
     */
    public static func json(_ str: String) -> Any? {
        guard let data: Data = str.data(using: String.Encoding.utf8, allowLossyConversion: false) else { return nil }
        if let json: Any = try? JSONSerialization.jsonObject(with: data, options: []) {
            return json
        }else {
            fatalError("JSON is format wrongly: \(str)")
        }
    }
}
