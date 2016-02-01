//
//  TableViewTutorial.swift
//  technolearn
//
//  Created by Mahesh on 1/25/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class TableViewTutorial: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var tableview: UITableView?
    @IBOutlet weak var itemsTable: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Item.populateItems()
        // Do any additional setup after loading the view.
        

        self.navigationItem.rightBarButtonItem = self.editButtonItem()
        //self.itemsTable.editing = true
        
//        let ratingControl = RatingVIew(frame: CGRectMake(0,300,150, 30))
//        self.view.addSubview(ratingControl)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        //itemsTable.reloadData()
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
        let item = addedItems[indexPath.row]
        cell.itemLabel.text = item.name
        cell.itemImage.image = item.image
        cell.itemDescription.text = item.desc
        cell.item = item
        cell.tableView = tableView
        if item.fav {
            cell.btnFav.backgroundColor = UIColor.purpleColor()
        } else {
            cell.btnFav.backgroundColor = UIColor.blackColor()
        }
        
        return cell
        
    }
    

    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete) {
            
            addedItems.removeAtIndex(indexPath.row)
            itemsTable.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let movedObject = addedItems[sourceIndexPath.row]
        addedItems.removeAtIndex(sourceIndexPath.row)
        addedItems.insert(movedObject, atIndex: destinationIndexPath.row)
        NSLog("%@", "\(sourceIndexPath.row) => \(destinationIndexPath.row) \(addedItems)")
        // To check for correctness enable: self.tableView.reloadData()
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
