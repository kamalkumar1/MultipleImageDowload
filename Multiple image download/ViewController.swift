//
//  ViewController.swift
//  Multiple image download
//
//  Created by vinoth on 12/28/1396 AP.
//  Copyright © 1396 kamal. All rights reserved.
//

import UIKit
import Foundation;

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate,URLSessionDelegate{
    
    @IBOutlet weak var tblView: UITableView!
    var samplearay :[String] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var st1 = "https://photos.app.goo.gl/gVUUZpO8h21tQ4o83"
        var st2 = "https://photos.app.goo.gl/sXcfIgaaWxqPNIyw2"
        var st3 = "https://photos.app.goo.gl/Kr1imuBh0Jv9qkVA2"
        var st4 = "https://photos.app.goo.gl/8Ton9Lq2fiwylXpu2"
        var st5 = "https://photos.app.goo.gl/23ozTxJ6AZoUDlS02"
        
        samplearay = [st1,st2,st3,st4,st5]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return samplearay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblView.dequeueReusableCell(withIdentifier: "ImageTableViewCell") as! ImageTableViewCell
        return cell

        
    }
    
    func getindex(indexs: Int, urls: String) -> Void {
        
        var urlsessionconfiguration:URLSessionConfiguration = URLSessionConfiguration.default;
        urlsessionconfiguration.allowsCellularAccess = true;
        
        var urlsession:URLSession = URLSession.init(configuration: urlsessionconfiguration, delegate: self, delegateQueue: nil)
        var url:URL = URL.init(string: urls)!
        var  nsmutablerequest:NSMutableURLRequest = NSMutableURLRequest.init(url: url)
        nsmutablerequest.httpMethod="GET"
        nsmutablerequest.setValue("Content-Type", forHTTPHeaderField: "application/json")
        
        var downloadDataTask:URLSessionDownloadTask = urlsession.downloadTask(with: <#T##URLRequest#>, completionHandler: <#T##(URL?, URLResponse?, Error?) -> Void#>)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

