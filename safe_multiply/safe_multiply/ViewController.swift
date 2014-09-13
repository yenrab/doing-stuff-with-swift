//
//  ViewController.swift
//  safe_multiply
//
//  Created by lee on 9/12/14.
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
        
        if let aNumber = firstNumberInput.text.toInt(){
            if let anotherNumber = secondNumberInput.text.toInt(){
                let product = multiply(aNumber, secondNumber: anotherNumber)
                displayValue = "= \(product)"
            }
            else{
                displayValue = "Oops. Second Number"
            }
        }
        else{
            displayValue = "Oops. First Number"
        }
        productLabel.text = displayValue
    }

    //the idea behind this example is it will show them how to check
    //user input using an if statement.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

