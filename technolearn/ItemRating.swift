//
//  ItemRating.swift
//  technolearn
//
//  Created by Mahesh on 1/31/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class ItemRating: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet weak var ratingButtons: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        NSBundle.mainBundle().loadNibNamed("ItemRating", owner: self, options: nil)
        self.addSubview(self.ratingButtons)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSBundle.mainBundle().loadNibNamed("ItemRating", owner: self, options: nil)
        self.addSubview(self.ratingButtons)
    }
    
    
    @IBAction func ratingAction(sender: UIButton) {
        
        for view in self.ratingButtons.subviews {
            
            let btn = view as! UIButton
            if btn.tag <= sender.tag {
                btn.backgroundColor = UIColor.blackColor()
            } else {
                btn.backgroundColor = UIColor.redColor()
            }
        }
        let view = UIAlertView.init(title: "Thanx", message: "THanx for rating", delegate: nil, cancelButtonTitle:"Cancel", otherButtonTitles: "OK", "")
        view.show()
    }

}
    

