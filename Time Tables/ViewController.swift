//
//  ViewController.swift
//  Time Tables
//
//  Created by Solomon Rajkumar on 13-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var sliderValueInt = 1
    
    @IBOutlet weak var sliderValue: UISlider!
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        sliderValueInt = Int(sliderValue.value)
        
        print(sliderValueInt)
        
        myTableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 50
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "TimeTableCell")
        
        let currentCellValue = sliderValueInt * indexPath.row
        cell.textLabel?.text = "\(sliderValueInt) x " + "\(indexPath.row) = " + "\(currentCellValue)"
        
        return cell
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

