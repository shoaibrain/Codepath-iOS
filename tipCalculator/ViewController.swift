//
//  ViewController.swift
//  tipCalculator
//
//  Created by Shoaib Rain on 8/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip amount label
        tipAmountLabel.text = String(format:"$%.2f", tip)
        //Update the total amount
        totalLabel.text = String(format:"$%.2f", total)
        
    }
    
}

