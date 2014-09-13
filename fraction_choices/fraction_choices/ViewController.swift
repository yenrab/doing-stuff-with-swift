//
//  ViewController.swift
//  fraction_choices
//
//  Created by lee on 9/12/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showIsFractionalLabel: UILabel!
    
    @IBAction func checkFractional(sender: AnyObject) {
        let aNumber = -10.25
        if aNumber > 0 && aNumber < 1{
            showIsFractionalLabel.text = "\(aNumber) is only fractional."
        }
        else if aNumber < 0 && aNumber > -1{
            showIsFractionalLabel.text = "\(aNumber) is only fractional."
        }
        else{
            showIsFractionalLabel.text = "\(aNumber) has a whole number component."
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

