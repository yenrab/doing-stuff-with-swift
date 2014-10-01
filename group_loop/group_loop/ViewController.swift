//
//  ViewController.swift
//  group_loop
//
//  Created by Lee Barney on 9/22/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var evaluationDisplay: UITextView!
    
    
    @IBAction func checkDoublesGroup(sender: AnyObject) {
        var numbers = [0.25, 11.003, -2.14, 0.14, 20001.3, -0.000001, -10.0]
        
        let thing:Int? = 3
        
        if let realInt = thing {
            let swapped = realInt.byteSwapped
        }
        
        let filteredNumbers:Array<Double> = numbers.filter({(aDouble:Double) ->Bool in
            return aDouble < 0
        })
        for var i = 0; i < 3; i++ {
            let aNumber = filteredNumbers[i]
            let currentText = evaluationDisplay.text
            if (aNumber > 0 && aNumber < 1) || (aNumber < 0 && aNumber > -1){
                evaluationDisplay.text = "\(currentText) \(aNumber) is only fractional.\n"
            }
            else{
                evaluationDisplay.text = "\(currentText) \(aNumber) has a whole number component.\n"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

