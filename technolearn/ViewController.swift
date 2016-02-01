//
//  ViewController.swift
//  technolearn
//
//  Created by Mahesh on 1/25/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var topicsLearned = ["TableViewController","CollectionViewController"]
    var selectedTopic:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        SCLAlertView().showInfo("Important info", subTitle: "You are great")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  topicsLearned.count 
        
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell!.textLabel!.text = topicsLearned[indexPath.row]
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedTopic = topicsLearned[indexPath.row]
        self.performSegueWithIdentifier(topicsLearned[indexPath.row], sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewController = segue.destinationViewController
        viewController.title = selectedTopic!
    }
    

}

//extension UIButton {
//    @IBInspectable var borderWidth : CGFloat {
//        get {
//            return self.layer.borderWidth
//        }
//        set {
//            self.borderWidth = newValue
//        }
//    }
//
//    @IBInspectable var borderColor: UIColor {
//        get {
//            return self.layer.borderColor!
//        }
//        set {
//            self.borderColor = newValue
//        }
//    }
//    
//    @IBInspectable var cornerRadius: CGFloat {
//        get {
//            return self.layer.cornerRadius
//        }
//        set {
//            self.cornerRadius = newValue
//        }
//    }
//}


//
//    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
//        didSet {
//            layer.borderColor = borderColor.CGColor
//        }
//    }
//    
////    @IBInspectable var borderWidth: CGFloat = 0 {
////        didSet {
////            layer.borderWidth = borderWidth
////        }
////    }
//    
//    @IBInspectable var cornerRadius: CGFloat = 0 {
//        didSet {
//            layer.cornerRadius = cornerRadius
//        }
//    }


