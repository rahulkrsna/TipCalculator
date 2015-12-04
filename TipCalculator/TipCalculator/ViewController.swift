//
//  ViewController.swift
//  TipCalculator
//
//  Created by Rahul Krishna Vasantham on 12/3/15.
//  Copyright © 2015 org.asu.codepath. All rights reserved.
//

import UIKit

var defaultTipPercenSegment:Int = 0

class ViewController: UIViewController {

    @IBOutlet var billAmount: UITextField!
    @IBOutlet var tipPercentSegment: UISegmentedControl!
    @IBOutlet var totalAmountLabel: UILabel!
    @IBOutlet var tiplabel: UILabel!
    
    var tipPercentages = [0.18, 0.20, 0.22]
    // On click of the segment
    @IBAction func percentSelection(sender: AnyObject) {
        // Calcuate Tip
        calculateTipAndUpdate(generateTipPercent())
    }
    
    //On click of the reset button
    @IBAction func resetValues(sender: AnyObject) {
        
        resetTheValues()
    }
    
    @IBAction func onChange(sender: AnyObject) {
        //Calculate Tip
        calculateTipAndUpdate(generateTipPercent())
    }
    
    //GenerateTip
    func generateTipPercent() -> Double  {
        
        return tipPercentages[tipPercentSegment.selectedSegmentIndex]
    }
    
    // Calcuate the tip based on User Choice and Update the UI
    func calculateTipAndUpdate(tipPercent:Double) {
        
        if billAmount.text == "" {
            return
        }
        
        let tip: Double =  (Double(billAmount.text!)! * tipPercent)
        let totalAmount: Double = (Double(billAmount.text!))! + tip
        
        tiplabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", totalAmount)
    }
    
    // This would reset all the values.
    func resetTheValues() {
        billAmount.text = ""
        totalAmountLabel.text = "$0.00"
        tiplabel.text = "$0.00"
        tipPercentSegment.selectedSegmentIndex = defaultTipPercenSegment
    }
    
    // End Editing on Tap.
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize the initial values
        resetTheValues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

