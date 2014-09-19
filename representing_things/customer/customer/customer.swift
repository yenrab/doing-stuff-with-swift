//
//  customer.swift
//  customer
//
//  Created by Lee Barney on 9/19/14.
//  Copyright (c) 2014 Lee Barney. All rights reserved.
//

import Foundation

struct ClothingCustomer:Printable{
    var name:String
    var age:Int
    var inseam:Double
    var description:String {
        return "\nname: \(self.name)\n age: \(self.age)\n inseam: \(self.inseam)\n"
    }
}