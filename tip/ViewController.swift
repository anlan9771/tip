//
//  ViewController.swift
//  tip
//
//  Created by anlan on 8/28/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipAmountSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipAmountSegmentControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

