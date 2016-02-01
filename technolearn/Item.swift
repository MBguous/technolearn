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
    var fav: Bool
    
    init(name: String, image: UIImage, desc: String, fav: Bool) {
        self.name = name
        self.image = image
        self.desc = desc
        self.fav = false
    }
    
    func addItem() {
        addedItems.append(self)
    }
    
    
    class func populateItems () {
        let item1: Item = Item(name: "iPhone", image: UIImage(named: "iphone")!, desc: "Awesome iPhone", fav: false)
        item1.addItem()
        
        let item2: Item = Item(name: "macbook", image: UIImage(named: "macbook")!, desc: "Macbook Pro bought recently", fav: false)
        item2.addItem()
        
        let item3: Item = Item(name: "samsung", image: UIImage(named: "samsung")!, desc: "Samsung phone bought recently", fav: false)
        
        item3.addItem()
        
        let item4: Item = Item(name: "samsung", image: UIImage(named: "samsung")!, desc: "Samsung phone bought recently", fav: false)
        
        item4.addItem()
        
        let item5: Item = Item(name: "samsung", image: UIImage(named: "samsung")!, desc: "Samsung phone bought recently", fav: false)
        
        item5.addItem()
    }
    
    
}
