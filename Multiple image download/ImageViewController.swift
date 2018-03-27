//
//  ImageViewController.swift
//  Multiple image download
//
//  Created by vinoth on 02/01/1940 Saka.
//  Copyright © 1940 kamal. All rights reserved.
//

import UIKit
class Downloads:NSObject,URLSessionDownloadDelegate  {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        
    }
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64) {
        
    }
    func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64) {
        
        
    }
    
    class func downloadImageWithURL(url:String) -> UIImage! {
        
        let url = URL.init(string: url)
        let data = try? Data(contentsOf: url!)
        
        //let data = NSData.init(contentsOf: URL.init(string: url)!);
        let image=UIImage(data:data!);
        return image;
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
        var st1 = "https://lh3.googleusercontent.com/xLSlk4o4Zz4844S5Dwi1BEqxp8nzMx8ST_YIPfNIc_H43bJ9rwuM0ZjgBcpegJBa8LcWl0t_u_R8YpsUxHsjjlkaSbodmZ07JApZpR2e-IWACXDzT6gi31W-nN-s50pSXWSTcm1zNycnaFTatBSBiZCcgIwPMDiR8zXEKofKW4HCBgOT10d6aGrjyYf4XesyMWm9hc_YGDI4Et9imDicKqB3esl27ubk0_mWPJdB4VytZpi1knjCyKaPjOic8yOLSlWsAGu-33cHVPVQnXXe3vHulC3pBtTDNsHCNJXHjs1KHXn-Iqsa1XnQCYuUjd_QkhJ5fLQIEUsrFd5qMkvZAzLLVA5iVfuQcszhMINvbtB4vpF3y_Fv69-3YZ_KN42NIqyHLe1bH0yzAu-xAJfHu6wKLVzg0B0avk5c19kv3CZAHHngtkrTmIDfcydgtvvMfBsv1h4021Nt43-t1MgYUoxsGH5Szhvts-ioCw9fniay3Z8s7G7VAHi-48NK2PBa0pjn2Xken5Euw7e1KeKrMVNC9rOh1Jmlaen_kuTiY8i2yS6lb6eV3Uv0WA_ZlgRjREK9HtbSSXQITYI4zuKRRjx0cFMGmOQF0RIhcAW2X9bmEVGIW1Io4D6N1NzBVyLgGksHkGtVg14ocsiZKMra0I6ymAO07RTl=w1600-h1200-no"
        var st2 = "https://lh3.googleusercontent.com/xLSlk4o4Zz4844S5Dwi1BEqxp8nzMx8ST_YIPfNIc_H43bJ9rwuM0ZjgBcpegJBa8LcWl0t_u_R8YpsUxHsjjlkaSbodmZ07JApZpR2e-IWACXDzT6gi31W-nN-s50pSXWSTcm1zNycnaFTatBSBiZCcgIwPMDiR8zXEKofKW4HCBgOT10d6aGrjyYf4XesyMWm9hc_YGDI4Et9imDicKqB3esl27ubk0_mWPJdB4VytZpi1knjCyKaPjOic8yOLSlWsAGu-33cHVPVQnXXe3vHulC3pBtTDNsHCNJXHjs1KHXn-Iqsa1XnQCYuUjd_QkhJ5fLQIEUsrFd5qMkvZAzLLVA5iVfuQcszhMINvbtB4vpF3y_Fv69-3YZ_KN42NIqyHLe1bH0yzAu-xAJfHu6wKLVzg0B0avk5c19kv3CZAHHngtkrTmIDfcydgtvvMfBsv1h4021Nt43-t1MgYUoxsGH5Szhvts-ioCw9fniay3Z8s7G7VAHi-48NK2PBa0pjn2Xken5Euw7e1KeKrMVNC9rOh1Jmlaen_kuTiY8i2yS6lb6eV3Uv0WA_ZlgRjREK9HtbSSXQITYI4zuKRRjx0cFMGmOQF0RIhcAW2X9bmEVGIW1Io4D6N1NzBVyLgGksHkGtVg14ocsiZKMra0I6ymAO07RTl=w1600-h1200-no"
        var st3 = "https://lh3.googleusercontent.com/W7RK9MwqRQ5hoJu6k8-yhId5L94tTrgzrp0D7pR7RmGVbHckxZGdphW_yTubL9dN2UHr73oV0EcDPd-0N-rwpNVEXkQ0i3XPgWwqtQCRUg7CQkwsaIa4pG9YVWOI9cYvCpN18pw6xRYlyRCEr9RgK9EZ7n-wxdybtJhHLbUSAZiKoIyXS81VDkIRJpP1KxjRQ5VlJ1ZcTnxJzYNJpNDN8fUt2mmWrAFTWAsNXvETTh2B6LS_YuLBAepRI176cPEK_mettVpmvE60AmYK2vt3rPxd4gWtZowes6BLOEb9MATDcysndwdFsdTQdRgbY-gEjchzYjVwnOZ4z2vdY-AoXMjgYUyZuV89IZ6TgnH3aAXmB2qWy0XQ_rzzLHN_cePbMj-VguibhJh7vaurWvpdx8uAU0yVzUvlBm1yVDU4tsgAqNtCTTE2iQ6WriBxBTRRUpDFyYOIbD75BtQTN987dagtWsMBGMDFsNNQpX8m2BIPkqo6XqcoYnmo0GOMMYH_FqzHXp0n5ZcjaQjObAvuMj3_0tEkSv8Z0PfYCZqFk7KPM-07jekUR6ymuVneSQamteLp5ZUw6A4_XUiyyguzD3jglravPTSQfWtaIMABfLhZKSTtdHdGWMpU_XJM0Nt9Kl3M5GE4oWKb2pzZKR6ccJnVccKIG35A=w2528-h1428-no"
        var st4 = "https://lh3.googleusercontent.com/Qj0GMCn4BSeIOUaogYjitQVFXbUXomPK94D4nzKUpXZQnrvFMn7H596LBnIkZL6j9j2145iZePZZG-yr-n-3SlcjYdbTCYJbN7yn6OOUKfoUMc7ETRAw_7E5podTXoY9_E05Zb8mFQsq-57PCc-871XrkoczH9gXktJBHP89UscSemsZaMv1W5mkWMHUuSLVH_Gl2mGvpED9Q4sL2ndaL9kMpeljIVwVRYasF4o79Q-K64bIOv8Gv27Y-NVlvPohwwh3W8QKAoK1oXgV03TzNlxNVOjUax_rmCiCjZwjap9ZAiIJXJSeOKidfaM06WMlAPaADKWXDPz7cOmZlAkdK0FQWW9MWZ8cNeZug2nEdo6zf0Jj50nDNn5BvAbSdcEN6DA0Khloy4MMVO4NpBxRYPO4Q3WumA5Mwk-zSbyCJGhAOdkDH4WE_vMQMpH8IeTCbZXc620BaN9fKw9Q0PecA1_XVrRvhMJQyDnnqoF_ZBjjq_qTB1MIY18u2-WBEPOYoM7tkFKe9R9lyTqRetS2PE6c1iPLhZnboTcrx8qovk_IYod3P46bt3ev5eAiJEaz8lap0yg8yXBtqQ1mrGF0LDyapbaAZ__G6cY6LoTOXKFTAhIbG2qCvtu-CkYpxEG0Yw_xlvAXaZhGhh9yi3JBy4owBo4336cX=w2528-h1428-no"
        var st5 = "https://lh3.googleusercontent.com/KqFu4Gu1ptlm69J9JZGLJGf42UjQvzIxYWKvGRLUv5ikNadBdVqmZBMDDiW-5cgqpMMFj8HMHrQebIbObQNz1C0ul4EaRXmvw-XmCE8U1lk9t7qz2-ugEheC0lPlxIdkLg99hpcjgICdeiQhgFGKuphX2nqNu6tqZDeThpk9XiRDk__bwkwmoDnhvupf-Eu7qK80xTt-vDSs2tLqkGRvaew5fGUrh2qSEkd2AZr4JZDCIVOvEQ4RAUyc814dblDbFUoBwGadzAW00z_xYzC_WpwAtVm28E7cXGHvs0Nunm3JtSIDR5Q7mtzpFax8mhpBb53SIArKE1JMh2Ri5xc-C708FbL2tcYpUrXibtcxSMcoN4O_i7d0gNTNCREmKeLai3eHw0rqW7XJ8t5yLcLjEJCamWO_4diSgniwBlnybL_69tibsXrfWss6zIWxMx32rVWohZHO6jTpiG7f_gb1eWHhFoOiz_6D7cSBO-G8gOVC6b4sEU-R5lDMaPNGzdr34vo1_UZEZQsqMmzYMvka42RsnNKIf-SCdQr0bMyMmGdtykHqReJx0rcQ7ohu_KfsNLYsDeBMsrcLxb-cpefTzHqBe606FtK4OSIZTZgnxluwBw-eXJmHc6O0Oc_zQNcQGLFRwCyQNA17lUXS8TT_OoUOEoZNKJq9=w2528-h1428-no"
        
        samplearay = [st1,st2,st3,st4,st5]


        // Do any additional setup after loading the view.
    }
    @IBAction func DownloadImage(_ sender: Any) {
        
        var queue = DispatchQueue.global(qos: .default)
        queue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[0]);
            DispatchQueue.main.async {
                self.img1.image = imges
            }
            
            
        }
        queue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[1]);
            DispatchQueue.main.async {
                self.img2.image = imges
            }
            
            
        }
        queue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[2]);
            DispatchQueue.main.async {
                self.img3.image = imges
            }
            
            
        }
        queue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[3]);
            DispatchQueue.main.async {
                self.img4.image = imges
            }
            
            
        }
//        queue.async {
//            let imges = Downloads.downloadImageWithURL(url: self.samplearay[4]);
//            DispatchQueue.main.async {
//                self.img.image = imges
//            }
//            
//            
//        }
        
        
        
        
        
    }
    
    @IBAction func SerialDownload(_ sender: Any) {
        let serialQueue = DispatchQueue(label: "com.image.download")
        
        serialQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[0]);
            DispatchQueue.main.async {
                self.img1.image = imges
            }
            
            
        }
        serialQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[1]);
            DispatchQueue.main.async {
                self.img2.image = imges
            }
            
            
        }
        serialQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[2]);
            DispatchQueue.main.async {
                self.img3.image = imges
            }
            
            
        }
        serialQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[3]);
            DispatchQueue.main.async {
                self.img4.image = imges
            }
            
            
        }

    }
    
    @IBAction func concurrent(_ sender: Any) {
        
        let concurrentQueue = DispatchQueue(label: "com.image.download1", attributes:.concurrent)
        
        concurrentQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[0]);
            DispatchQueue.main.async {
                self.img1.image = imges
            }
            
            
        }
        concurrentQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[1]);
            DispatchQueue.main.async {
                self.img2.image = imges
            }
            
            
        }
        concurrentQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[2]);
            DispatchQueue.main.async {
                self.img3.image = imges
            }
            
            
        }
        concurrentQueue.async {
            let imges = Downloads.downloadImageWithURL(url: self.samplearay[3]);
            DispatchQueue.main.async {
                self.img4.image = imges
            }
            
            
        }

    }
    
    @IBAction func Nsoperation(_ sender: Any) {
       let operation = OperationQueue();
        for index in 0...4 {
                        //print("\(index) times 5 is \(index * 5)")
            operation.addOperation {
                let imges = Downloads.downloadImageWithURL(url: self.samplearay[index]);
                OperationQueue.main.addOperation({
                    if index==0{
                        self.img1.image = imges
                    }else if index==1{
                        self.img2.image = imges
                    }else if index==2{
                        self.img3.image = imges
                    }else if index==3{
                        self.img4.image = imges
                    }
                    
                })
            }
        }
        
        
       
//        operation.addOperation {
//            let imges = Downloads.downloadImageWithURL(url: self.samplearay[0]);
//            OperationQueue.main.addOperation({
//                 self.img1.image = imges
//            })
//        }
//        operation.addOperation {
//            let imges = Downloads.downloadImageWithURL(url: self.samplearay[1]);
//            OperationQueue.main.addOperation({
//                self.img2.image = imges
//            })
//        }
//        operation.addOperation {
//            let imges = Downloads.downloadImageWithURL(url: self.samplearay[2]);
//            OperationQueue.main.addOperation({
//                self.img3.image = imges
//            })
//        }
//        operation.addOperation {
//            let imges = Downloads.downloadImageWithURL(url: self.samplearay[3]);
//            OperationQueue.main.addOperation({
//                self.img4.image = imges
//            })
//        }

//        for index in 0...4 {
//            //print("\(index) times 5 is \(index * 5)")
//            let indexs = DownloadManager.shared.activates().downloadTask(with: URL.init(string: samplearay[index])!)
//            indexs.resume()
//        }
        
       
        
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
