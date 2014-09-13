//
//  ViewController.swift
//  safe_multiply2
//
//  Created by lee on 9/13/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberInput: UITextField!
    @IBOutlet weak var secondNumberInput: UITextField!
    @IBOutlet weak var productLabel: UILabel!
    
    func multiply(firstNumber:Int, secondNumber:Int) -> Int{
        return firstNumber * secondNumber
    }
    
    @IBAction func multiplyThem(sender: AnyObject) {
        var displayValue:String = ""
        let aNumber = firstNumberInput.text.toInt()
        let anotherNumber = secondNumberInput.text.toInt()
        if aNumber != nil && anotherNumber != nil{
            let product = multiply(aNumber!, secondNumber: anotherNumber!)
            displayValue = "= \(product)"
            
        }
        else{
            displayValue = "Oops"
        }
        productLabel.text = displayValue
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

