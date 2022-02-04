//
//  ViewController.swift
//  Prework
//
//  Created by Michael Ugwe on 2/3/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmounttextfield: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmounttextfield.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

