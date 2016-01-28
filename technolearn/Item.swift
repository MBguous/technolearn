//
//  Item.swift
//  technolearn
//
//  Created by Mahesh on 1/28/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

var addedItems = [Item]()

class Item: NSObject {
    
    var name: String
    var image: UIImage
    var desc: String
    
    init(name: String, image: UIImage, desc: String) {
        self.name = name
        self.image = image
        self.desc = desc
    }
    
    func addItem() {
        addedItems.append(self)
    }
    
}
