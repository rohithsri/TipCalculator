//
//  ViewController.swift
//  Project1TipCalc
//
//  Created by Rohith Sridharan on 1/8/19.
//  Copyright © 2019 Rohith Sridharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPerc = [0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPerc[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


