//
//  TestWebServiceViewController.swift
//  technolearn
//
//  Created by Mahesh on 2/2/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit
import Alamofire

class TestWebServiceViewController: UIViewController {

    @IBOutlet weak var fetchedDataTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func test(sender: AnyObject) {
//        
//        Alamofire.request(.GET, "http://www.neekhil.com.np/testpreparation/get_daily_updates.php")
//            .responseJSON { response in
////                print(response.request)  // original URL request
////                print(response.response) // URL response
////                print(response.data)     // server data
////                print(response.result)   // result of response serialization
//                
////                self.fetchedDataTextView.text = "\(response.data)"
//                
//                    if let JSON = response.result.value {
//                        print("JSON: \(JSON)")
//
//                        self.fetchedDataTextView.text = "\(JSON)"
//                    }
//        }
//    }
    
    @IBAction func fetchAllData(sender: AnyObject) {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                self.fetchedDataTextView.text = "\(response.request)\n\(response.response)\n\(response.data)\n\(response.result)"
                
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                    
//                    self.fetchedDataTextView.text = "\(JSON)"
//                }
        }
    }

    @IBAction func fetchRequest(sender: AnyObject) {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                
                self.fetchedDataTextView.text = "\(response.request)"
        }
        
    }
    
    @IBAction func fetchResponse(sender: AnyObject) {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.response) // URL response
                
                self.fetchedDataTextView.text = "\(response.response)"
        }
    }
    
    @IBAction func fetchData(sender: AnyObject) {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.data)     // server data
                
                self.fetchedDataTextView.text = "\(response.data)"
        }
    }
    
    @IBAction func fetchResult(sender: AnyObject) {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.result)   // result of response serialization
                
                self.fetchedDataTextView.text = "\(response.result)"
        }
    }
    
    @IBAction func fetchResultValue(sender: AnyObject) {
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in

                if let JSON = response.result.value {
                    print("JSON: \(JSON["args"])")

                    self.fetchedDataTextView.text = "\(JSON["args"])"
                }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
