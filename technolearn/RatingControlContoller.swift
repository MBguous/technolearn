//
//  RatingControlContoller.swift
//  technolearn
//
//  Created by Mahesh on 1/29/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class RatingControlContoller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ratingControl = RatingVIew(frame: CGRectMake(0,300,200,100))
        self.view.addSubview(ratingControl)
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
