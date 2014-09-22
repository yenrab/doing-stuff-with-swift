//
//  ViewController.swift
//  write_to_file
//
//  Created by Lee Barney on 9/22/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var inseamInput: UITextField!
    @IBOutlet weak var customerDisplay: UITextView!
    
    var customers = Array<ClothingCustomer>()

    @IBAction func createCustomer(sender: AnyObject) {
        let aName = nameInput.text
        let anAge = ageInput.text.toInt()
        if anAge != nil{
            let anInseam = (inseamInput.text as NSString).doubleValue
            let aCustomer = ClothingCustomer(name: aName, age: anAge!, inseam: anInseam)
            customers.append(aCustomer)
            customerDisplay.text = customers.description
        }
        else{
            customerDisplay.text = "Oops. Put an integer in the age field."
        }
    }
    
    @IBAction func writeCustomersToFile(sender: AnyObject) {
        let documentsDirectoryPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0] as String
        NSLog(documentsDirectoryPath)
        let dataPath = documentsDirectoryPath.stringByAppendingPathComponent("customer.data")
        var customersString = ""
        for var i = 0; i < customers.count; i++ {
            let aCustomerStorageString = customers[i].storageString
            customersString += "\(aCustomerStorageString)\n"
        }
        customersString.writeToFile(dataPath, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
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

