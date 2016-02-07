//
//  QuizViewController.swift
//  technolearn
//
//  Created by Mahesh on 2/4/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit
import Alamofire

class QuizViewController: UIViewController {

    @IBOutlet weak var quizTextView: UITextView!
    
    @IBOutlet weak var queryView: UIView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var weekLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var answer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Alamofire.request(.GET, "http://www.neekhil.com.np/testpreparation/get_daily_updates.php")
            .responseJSON { (response) -> Void in
                //                print(response.request)  // original URL request
                //                print(response.response) // URL response
                //                print(response.data)     // server data
                //                print(response.result)   // result of response serialization
                
                //                self.fetchedDataTextView.text = "\(response.data)"
                
                if let JSON = response.result.value!["data"] {
                    print("JSON: \(JSON![0]["id"])")
                    
                    self.idLabel.text = "\(JSON![0]["id"]!! as! String)"
                    self.typeLabel.text = "\(JSON![0]["type"]!! as! String)"
                    self.weekLabel.text = "Week " + "\(JSON![0]["week"]!! as! String)"
                    self.questionLabel.text = "\(JSON![0]["question"] as! String)"
                    self.option1Button.setTitle("\(JSON![0]["option1"]!! as! String)", forState: .Normal)
                    self.option2Button.setTitle("\(JSON![0]["option2"] as! String)", forState: .Normal)
                    self.option3Button.setTitle("\(JSON![0]["option3"]!! as! String)", forState: .Normal)
                    self.option4Button.setTitle("\(JSON![0]["option4"]!! as! String)", forState: .Normal)
                    self.answer = "\(JSON![0]["answer"] as! String)"
                    print(self.answer)
                }
        }
    }
    
    @IBAction func didChooseOption(sender: AnyObject) {
        
        if(sender.currentTitle == self.answer) {
            print("correct")
            self.resultLabel.text = "Correct!"
        }
        else {
            print("incorrect")
            self.resultLabel.text = "Incorrect! Please try again."
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
