//
//  ViewController.swift
//  tippy
//
//  Created by Shreyansh Gandhi on 4/20/16.
//  Copyright (c) 2016 Shreyansh Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calulateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill  = NSString(string: self.billField.text).doubleValue
        println("bill = ", bill)
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // NOT WORKING BELOW
        //let bill = Double(billField.text!) ?? 0
        

        //tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        //print("hello")
        view.endEditing(true)
    }
}

