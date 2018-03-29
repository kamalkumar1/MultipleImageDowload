//
//  URLConfigureManager.swift
//  Multiple image download
//
//  Created by vinoth on 25/03/18.
//  Copyright © 2018 kamal. All rights reserved.
//

import Foundation
class URLConfigureManager :TrackCellDelegate{
    func pauseTapped(urls: String, filepath: String) {
        delegate?.pauseTapped(urls: urls, filepath: filepath)
    }
    
    func resumeTapped(value: Float) {
        
    }
    
    
    
    static var shared = URLConfigureManager()
    
    private  var delegate: TrackCellDelegate?
    func activatesSession(track:TrackCellDelegate) -> URLSession {
        delegate=track
        //let config = URLSessionConfiguration.background(withIdentifier: "\(Bundle.main.bundleIdentifier!).background")
         let config = URLSessionConfiguration.default
        config.allowsCellularAccess=true;
        //config.urlCredentialStorage
        
        // Warning: If an URLSession still exists from a previous download, it doesn't create a new URLSession object but returns the existing one with the old delegate object attached!
        return URLSession(configuration: config, delegate: SessionDelegate(TrackCellDelegates: self), delegateQueue: OperationQueue())
    }
}
