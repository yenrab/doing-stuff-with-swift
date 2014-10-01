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
        
        let badIndex = 7
        var anArray = [0.25, 11.003, -2.14, 0.14, 20001.3, -0.000001, -10.0]
        
        anArray[badIndex] = 45.9
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

