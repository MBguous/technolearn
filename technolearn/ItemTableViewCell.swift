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
    @IBOutlet weak var btnFav: UIButton!
    var item:Item?
    var tableView:UITableView?
    
    
    
    @IBAction func addFavourite(sender: UIButton) {
        
        tableView?.reloadData()
        
        if(item!.fav == false)
        {
            //sender.setTitle("Favorited ✓", forState: .Normal)
            item!.fav = true
            //sender.backgroundColor = UIColor.purpleColor()
            
            
        }
        else {
            //sender.setTitle("Favorite ♡", forState: .Normal)
            
            item!.fav = false
            //sender.backgroundColor = UIColor.blackColor()
            
        }
        
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
