import Foundation

/*Global generic decode method for Decodable*/
public func decode<T: Decodable>(data: Data) throws -> T {
   let decoder = JSONDecoder()
   return try decoder.decode(T.self, from: data)
}

/*Encodable Extension*/
extension Encodable {
   public func encode() throws -> Data {
      let encoder = JSONEncoder()
      encoder.outputFormatting = .prettyPrinted
      return try encoder.encode(self)
   }
}
