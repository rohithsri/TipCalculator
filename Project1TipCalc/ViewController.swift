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
        
        let defaults = UserDefaults.standard
        defaults.set(0.18, forKey: "Tip1")
        defaults.set(0.20, forKey: "Tip2")
        defaults.set(0.25, forKey: "Tip3")


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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        
        let tipOne_ = defaults.double(forKey: "Tip1")
        let tipTwo = defaults.double(forKey: "Tip2")
        let tipThree = defaults.double(forKey: "Tip3")

        
       // tipControl.setTitle(tipOne, forSegmentAt: 0)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
}


