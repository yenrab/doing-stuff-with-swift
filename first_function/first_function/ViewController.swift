//
//  ViewController.swift
//  first_function
//
//  Created by lee on 9/12/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var showUserLabel: UILabel!
   
    
    @IBAction func multiplyThem(sender: AnyObject) {
        
        let product = multiply(3, secondNum: 4)
        showUserLabel.text = "3 * 4 = \(product)"
    }
    
    func multiply(firstNum:Int, secondNum:Int) -> Int{
        return firstNum * secondNum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

