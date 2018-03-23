//
//  ImageViewController.swift
//  Multiple image download
//
//  Created by vinoth on 02/01/1940 Saka.
//  Copyright © 1940 kamal. All rights reserved.
//

import UIKit
class Downloads  {
    class func downloadImageWithURL(url:String) -> UIImage! {
        
        let data = NSData.init(contentsOf: URL.init(string: url)!);
        return UIImage.init(data: data! as Data)
    }
    
}
class ImageViewController: UIViewController {
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    var samplearay :[String] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        var st1 = "https://photos.app.goo.gl/gVUUZpO8h21tQ4o83"
        var st2 = "https://photos.app.goo.gl/sXcfIgaaWxqPNIyw2"
        var st3 = "https://photos.app.goo.gl/Kr1imuBh0Jv9qkVA2"
        var st4 = "https://photos.app.goo.gl/8Ton9Lq2fiwylXpu2"
        var st5 = "https://photos.app.goo.gl/23ozTxJ6AZoUDlS02"
        
        samplearay = [st1,st2,st3,st4,st5]


        // Do any additional setup after loading the view.
    }
    @IBAction func DownloadImage(_ sender: Any) {
        
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
