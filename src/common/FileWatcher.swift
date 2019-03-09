import Foundation
/**
 * EXAMPLE:
 * let filewatcher = FileWatcher(String(string: "~/Desktop/test.txt").expandingTildeInPath)
 * filewatcher.callback = { event in print("Something happened ")}
 * filewatcher.start() // start monitoring
 * EXAMPLE:
 * FileWatcher(String(string: "~/Desktop/test.txt").expandingTildeInPath) { Swift.print("file was modified") }.start() //shorthand
 * NOTE: Only works with a filepath to a file
 */
public class FileWatcher{
    public typealias CallBack = ()->Void
    let filePath:String
    var callback:CallBack
    var latency:TimeInterval /*in seconds*/
    var timer:Timer?
    var prevModifiedDate:NSDate?
    
    public init(_ filePath:String, latency:Double = 0.3, callback:@escaping CallBack = {}){
        self.filePath = filePath
        self.latency = latency
        self.callback = callback
    }
    /**
     * Start listening
     */
    public func start(){
        prevModifiedDate =  Utils.modificationDate(filePath)//set a modified date
        timer = Timer.scheduledTimer(timeInterval: latency, target: self, selector: #selector(update), userInfo: nil, repeats: true)//swift 3 upgrade
    }
    /**
     * Stop listening
     */
    public func stop(){
        if timer != nil {timer!.invalidate()}
    }
    /**
     * This method must be in the public or scope
     */
    @objc func update() {
        if let modifiedDate:NSDate = Utils.modificationDate(filePath), modifiedDate != prevModifiedDate {//this should be > prevDate, but works for now
            callback()//only call back if modification date changes
            prevModifiedDate = modifiedDate//set the new date
        }
    }
}
private class Utils{
    /**
     * NOTE: make sure the file exists with: FileAsserter.exists("some path here")
     * PARAM: can't be tildePath, must be absolute Users/John/...
     */
    static func modificationDate(_ filePath:String)->NSDate?{
        guard FileManager().fileExists(atPath: filePath) else {return nil}
        let fileURL:NSURL = NSURL(fileURLWithPath:filePath)
        let attributes = try! fileURL.resourceValues(forKeys: [URLResourceKey.contentModificationDateKey, URLResourceKey.nameKey])
        let modificationDate = attributes[URLResourceKey.contentModificationDateKey] as! NSDate
        return modificationDate
    }
}
