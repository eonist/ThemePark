import Foundation
/**
 * Global generic decode method for Decodable
 * TODO: write example
 */
public func decode<T: Decodable>(data: Data) throws -> T {
   let decoder = JSONDecoder()
   return try decoder.decode(T.self, from: data)
}

/**
 * Encodable Extension
 * TODO: write example
 */
extension Encodable {
   public func encode() throws -> Data {
      let encoder = JSONEncoder()
      encoder.outputFormatting = .prettyPrinted
      return try encoder.encode(self)
   }
}
