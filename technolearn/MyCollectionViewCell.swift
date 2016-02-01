//
//  MyCollectionViewCell.swift
//  technolearn
//
//  Created by Mahesh on 2/1/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override var highlighted: Bool {
        didSet {
            if (highlighted) {
                self.layer.opacity = 0.6;
            } else {
                self.layer.opacity = 1.0;
            }
        }
    }

}
