//
//  RatingVIew.swift
//  technolearn
//
//  Created by Mahesh on 1/29/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class RatingVIew: UIView {


    @IBOutlet var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        NSBundle.mainBundle().loadNibNamed("RatingControl", owner: self, options: nil)
//        self.addSubview(self.view);
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSBundle.mainBundle().loadNibNamed("RatingControl", owner: self, options: nil)
        self.addSubview(self.view);
   
    }

    @IBAction func rateItem(sender: UIButton) {

        
        for view in self.view.subviews {
            let filledStarImage = UIImage(named: "filledStar.png")
            let emptyStarImage = UIImage(named: "emptyStar.png")
            
            let btn = view as! UIButton
            if btn.tag <= sender.tag {
                btn.setBackgroundImage(filledStarImage, forState: .Normal)
                }
            else {
                btn.setBackgroundImage(emptyStarImage, forState: .Normal)
            }
        }
    }
    
//    @IBAction func rateItem(sender: UIButton) {
//        
//        let filledStarImage = UIImage(named: "filledStar")
//        let emptyStarImage = UIImage(named: "emptyStar")
//
//        
//        for view in self.view.subviews {
//            
//            let btn = view as! UIButton
//            if btn.tag <= sender.tag {
////                btn.backgroundColor = UIColor.blackColor()
//                btn.setImage(filledStarImage, forState: .Normal)
//            } else {
////                btn.backgroundColor = UIColor.redColor()
//                btn.setImage(emptyStarImage, forState: .Normal)
//            }
//        }
//        
////        let view = UIAlertView.init(title: "Thanx", message: "THanx for rating", delegate: nil, cancelButtonTitle:"Cancel", otherButtonTitles: "OK", "")
////        view.show()
//    }
    
}



