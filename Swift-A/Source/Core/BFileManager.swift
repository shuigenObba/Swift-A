//
//  BFileManager.swift
//  Swift-A
//
//  Created by shuigen on 03/01/2018.
//

import UIKit

fileprivate let DOCUMENTDIR = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]

public class BFileManager {
    /*
     usege
     只需要 传入fileName -你创建的文件夹的名字
     
     删除也是 传入你指定文件夹的路径即可
     */
    public class func createFileName(withFileName fileName: String) -> String {
        let manager = FileManager.default
        var loadPath = DOCUMENTDIR + "/\(fileName)"
        if !manager.isExecutableFile(atPath: loadPath) {
            do {
                try manager.createDirectory(atPath: loadPath, withIntermediateDirectories: true, attributes: nil)
            } catch {
                loadPath = ""
                print("\(loadPath)创建失败")
            }
        } else {
            print("\(loadPath)文件以及存在")
        }
        return loadPath
    }
    
    public class func deleteFileContent(atDirectory path: String) -> Bool {
        let manager = FileManager.default
        var isDelete: Bool = true
        do {
            let fileArr = try manager.contentsOfDirectory(atPath: path)
            _ = fileArr.map({ (fileName) -> Void in
                let filePath = path + "\(fileName)"
                do {
                    try manager.removeItem(atPath: filePath)
                } catch {
                    print("删除失败")
                    isDelete = false
                }
            })
        } catch  {
            print("\(path) 文件不存在")
            isDelete = false
        }
        return isDelete
    }
    
}

