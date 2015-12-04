//
//  TipPercentSettingsViewController.swift
//  TipCalculator
//
//  Created by Rahul Krishna Vasantham on 12/3/15.
//  Copyright © 2015 org.asu.codepath. All rights reserved.
//

import UIKit

class TipPercentSettingsViewController: UIViewController {

    @IBOutlet var tipPercentDefaultSegment: UISegmentedControl!
    
    // SET THE DEFUALT TIP PERCENT VALUE.
    @IBAction func tipPercentDefaultValueChange(sender: AnyObject) {
        defaultTipPercenSegment = tipPercentDefaultSegment.selectedSegmentIndex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ON VIEW LOAD SET THE DEFAULT SEGMENT INDEX.
        tipPercentDefaultSegment.selectedSegmentIndex = defaultTipPercenSegment
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
