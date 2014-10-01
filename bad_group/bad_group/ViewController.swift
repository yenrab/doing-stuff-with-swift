//
//  ViewController.swift
//  bad_group
//
//  Created by Lee Barney on 10/1/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func crashIt(sender: AnyObject) {
        
        let badIndex = 3
        let anArray = [3.4, 2.5, 6.9]
        
        let noSuchValue = anArray[badIndex]
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

