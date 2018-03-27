//
//  DownloadData.swift
//  Multiple image download
//
//  Created by vinoth on 25/03/18.
//  Copyright © 2018 kamal. All rights reserved.
//

import Foundation
class DownloadData {
    
    var m_url:String="";
    var m_progressvalue:Float=0;
    var m_downloadInProgress:Bool;
    var m_downloadComplete:Bool;
    
    
    
    init(url:String,progressvalue:Float,downloadInProgress:Bool,downloadComplete:Bool) {
        self.m_url = url;
        self.m_progressvalue = progressvalue;
        self.m_downloadInProgress = downloadInProgress;
        self.m_downloadComplete = downloadComplete;
        
    }
}
