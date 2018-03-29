//
//  SessionDelegate.swift
//  Multiple image download
//
//  Created by vinoth on 25/03/18.
//  Copyright © 2018 kamal. All rights reserved.
//

import Foundation
protocol TrackCellDelegate {
    func pauseTapped(urls:String ,filepath:String)
    func resumeTapped(value: Float)
   
}
class SessionDelegate: NSObject,URLSessionDelegate,URLSessionTaskDelegate,URLSessionDownloadDelegate,URLSessionDataDelegate{
    private  var delegate: TrackCellDelegate?
    init(TrackCellDelegates:TrackCellDelegate) {
        delegate = TrackCellDelegates ;
    }
    //DownloadDelegate
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        delegate?.pauseTapped(urls:String(describing: downloadTask.originalRequest?.url), filepath: String(describing: location))
    }
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        delegate?.resumeTapped(value:0.0 )
    }
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64) {
        
    }
    //
    
}
