//
//  ViewController.swift
//  Calculator
//
//  Created by Becky Chan on 10/3/15.
//  Copyright © 2015 Becky Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var customTip: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //want this to be calclated value
        totallabel.text="$200"
        
        
    }
    
    @IBAction func calculate(sender:AnyObject){
        //sender = UI
        
       
        //get text field and make it a #; set string to value
        let billAmount=NSString(string: billField.text!).doubleValue
        
        //figure tip amount
        print(tipControl.selectedSegmentIndex)
        
        var tipAmount: Double = 0
        
        //calculate tip amount
    
        if tipControl.selectedSegmentIndex == 0 {
            tipAmount = 0.15*billAmount
        }
    
        if tipControl.selectedSegmentIndex == 1 {
            tipAmount = 0.25*billAmount
        
        }
        
        if tipControl.selectedSegmentIndex == 2 {
            tipAmount = 0.30*billAmount
        
        }
        
        //get text field and make it a #; set string to value
        let customAmount=NSString(string: customTip.text!).doubleValue
        
        
        if tipControl.selectedSegmentIndex == 3 {
            tipAmount = (customAmount/100)*billAmount
            
        }
        
        if tipControl.selectedSegmentIndex == 4 {
            tipAmount = customAmount
            
        }
        
        //update label
        tiplabel.text="\(tipAmount)"
        
        
        let total=billAmount+tipAmount
        totallabel.text = "$\(total)"
        
        
        //doublevalue = number
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var display: UILabel!
    
}

