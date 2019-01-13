//
//  SettingsViewController.swift
//  Project1TipCalc
//
//  Created by Rohith Sridharan on 1/9/19.
//  Copyright © 2019 Rohith Sridharan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipOne: UITextField!
    @IBOutlet weak var tipTwo: UITextField!
    @IBOutlet weak var tipThree: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func update(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        //defaults.set
        //defaults.set(, forKey: T##String)
        defaults.set(tipOne.text, forKey: "Tip1")
        defaults.set(tipTwo.text, forKey: "Tip2")
        defaults.set(tipThree.text, forKey: "Tip3")
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
