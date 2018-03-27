//
//  SessionDelegate.swift
//  Multiple image download
//
//  Created by vinoth on 25/03/18.
//  Copyright © 2018 kamal. All rights reserved.
//

import Foundation
class SessionDelegate: NSObject,URLSessionDelegate,URLSessionTaskDelegate,URLSessionDownloadDelegate,URLSessionDataDelegate{
    
    //DownloadDelegate
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        
    }
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        
    }
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64) {
        
    }
    //
    
}
