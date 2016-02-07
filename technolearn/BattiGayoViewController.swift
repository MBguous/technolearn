//
//  BattiGayoViewController.swift
//  technolearn
//
//  Created by Mahesh on 2/3/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class BattiGayoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var groupNo: UILabel!
    
    
    @IBOutlet weak var groupPickerView: UIPickerView!
    @IBOutlet weak var daySegment: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    var group = Int()
    var day = Int()
    
    var groupPickerDataSource = [["Group 1", "Group 2", "Group 3", "Group 4", "Group 5", "Group 6", "Group 7"],["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.groupPickerView.dataSource = self
        self.groupPickerView.delegate = self
        
        label.text = "Sunday"
        
        // Do any additional setup after loading the view.
        
        groupNo.text = "Group " + String(group)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return groupPickerDataSource[0].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return groupPickerDataSource[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if(component == 0) {
            switch row {
            case 0...6:
                group = row + 1
                groupNo.text = "Group " + String(group)
                print("Group: " + String(group))
                //            print(timetable.schedule)
            default: break
            }
        }
        else if(component == 1) {
            switch row {
            case 0...6:
                day = row + 1
//                groupNo.text = "Group " + String(group)
                print("Day: " + String(day))
                //            print(timetable.schedule)
            default: break
            }
        }
//        if(row == 0) {
//            self.view.backgroundColor = UIColor.whiteColor();
//        }
//        else if(row == 1) {
//            self.view.backgroundColor = UIColor.redColor();
//        }
//        else if(row == 2) {
//            self.view.backgroundColor =  UIColor.greenColor();
//        }
//        else {
//            self.view.backgroundColor = UIColor.blueColor();
//        }
    }
    
//    @IBAction func selectGroup(sender: AnyObject) {
//        
////        group = Int(groupSlider.value)
//        group = sender.selectedSegmentIndex
//        print(group)
//        
//        switch group {
//            
//        case 0...6: groupNo.text = "Group " + String(group + 1)
//            
//        default: break
//        }
//    }
    
    @IBAction func selectDay(sender: AnyObject) {
        
        if(group == 2) {
            timetable.schedule = timetable.schedule.shift(1)
            print(timetable.schedule)
        }
        print(timetable.schedule)
        
        switch(sender.selectedSegmentIndex) {
            
        case 0...6:
            label.text = timetable.schedule[sender.selectedSegmentIndex]
            
        default:
            break
        }
        
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


extension Array {
    func shift(amount:Int) -> Array {
        var array = Array()
        if (self.count > 0) {
            array = self
            if (amount > 0) {
                for _ in 1...amount {
                    let x = array.removeAtIndex(self.count-1)
                    array.insert(x, atIndex: 0)
                }
            }
            
        }
        return array
    }
}
