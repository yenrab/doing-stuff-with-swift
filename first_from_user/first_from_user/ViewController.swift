//
//  ViewController.swift
//  first_from_user
//
//  Created by lee on 9/12/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberInput: UITextField!
    @IBOutlet weak var secondNumberInput: UITextField!
    @IBOutlet weak var productLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func multiply(firstNumber:Int, secondNumber:Int) -> Int{
        return firstNumber * secondNumber
    }
    @IBAction func multiplyThem(sender: AnyObject) {
        let aNumber = firstNumberInput.text.toInt()!
        let anotherNumber = secondNumberInput.text.toInt()!
        let product = multiply(aNumber,secondNumber: anotherNumber)
        productLabel.text = "= \(product)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

