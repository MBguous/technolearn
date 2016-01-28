//
//  ItemTableViewCell.swift
//  technolearn
//
//  Created by Mahesh on 1/26/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemDescription: UITextView!
    
    @IBAction func addFavourite(sender: UIButton) {
        
        sender.layer.backgroundColor = UIColor.brownColor().CGColor
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
