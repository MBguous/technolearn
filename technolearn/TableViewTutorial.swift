//
//  TableViewTutorial.swift
//  technolearn
//
//  Created by Mahesh on 1/25/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class TableViewTutorial: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableview:UITableView?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let item1: Item = Item(name: "iPhone", image: UIImage(named: "iphone")!, desc: "Awesome iPhone")
        item1.addItem()
        
        let item2: Item = Item(name: "macbook", image: UIImage(named: "macbook")!, desc: "Macbook Pro bought recently")
        item2.addItem()
        
        let item3: Item = Item(name: "samsung", image: UIImage(named: "samsung")!, desc: "Samsung phone bought recently")
        item3.addItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addedItems.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath) as! ItemTableViewCell

        
        cell.itemLabel.text = addedItems[indexPath.row].name
        cell.itemImage.image = addedItems[indexPath.row].image
        cell.itemDescription.text = addedItems[indexPath.row].desc
        
        return cell
        
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
