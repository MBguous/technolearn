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
    var topicsLearned = ["TableViewController", "CollectionViewController", "API Tutorial", "BattiGayo"]
    var selectedTopic: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        SCLAlertView().showInfo("Important info", subTitle: "You are great")
        SCLAlertView().showSuccess("TechnoLearn", subTitle: "These are some of the topics learned so far.")
//        SCLAlertView().showError("Hello Error", subTitle: "This is a more descriptive error text.") // Error
//        SCLAlertView().showNotice("Hello Notice", subTitle: "This is a more descriptive notice text.") // Notice
//        SCLAlertView().showWarning("Hello Warning", subTitle: "This is a more descriptive warning text.") // Warning
//        SCLAlertView().showInfo("Hello Info", subTitle: "This is a more descriptive info text.") // Info
//        SCLAlertView().showEdit("Hello Edit", subTitle: "This is a more descriptive info text.") // Edit
        
//        SCLAlertView().showTitle(
//            "Congratulations", // Title of view
//            subTitle: "Operation successfully completed.", // String of view
//            duration: 2.0, // Duration to show before closing automatically, default: 0.0
//            completeText: "Done", // Optional button value, default: ""
//            style: .Success, // Styles - see below.
//            colorStyle: 0xA429FF,
//            colorTextButton: 0xFFFFFF
//        )
        
//        let alertView = SCLAlertView()
//        alertView.addButton("First Button", target:self, selector:Selector("firstButton"))
//        alertView.addButton("Second Button") {
//            print("Second button tapped")
//        }
//        alertView.showSuccess("Button View", subTitle: "This alert view has buttons")
        
//        let alertView = SCLAlertView()
//        alertView.showCloseButton = false
//        alertView.showSuccess("No button", subTitle: "You will have hard times trying to close me")
        
        // Add a text field
//        let alert = SCLAlertView()
//        let txt = alert.addTextField("Enter your name")
//        alert.addButton("Show Name") {
//            print("Text value: \(txt.text)")
//        }
//        alert.showEdit("Edit View", subTitle: "This alert view shows a text box")
        
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

//    @IBInspectable var borderColor: UIColor {
//        get {
//            return self.layer.borderColor!
//        }
//        set {
//            self.borderColor = newValue
//        }
//    }
    
//    @IBInspectable var cornerRadius: CGFloat {
//        get {
//            return self.layer.cornerRadius
//        }
//        set {
//            self.cornerRadius = newValue
//        }
//    }
//}



//    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
//        didSet {
//            layer.borderColor = borderColor.CGColor
//        }
//    }

//    @IBInspectable var borderWidth: CGFloat = 0 {
//        didSet {
//            layer.borderWidth = borderWidth
//        }
//    }
    
//    @IBInspectable var cornerRadius: CGFloat = 0 {
//        didSet {
//            layer.cornerRadius = cornerRadius
//        }
//    }


