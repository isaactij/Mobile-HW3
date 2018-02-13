//
//  PersonClass.swift
//  TijerinaIsaac-hw3
//
//  Created by Isaac on 2/10/18.
//  Copyright © 2018 TijerinaIsaac. All rights reserved.
//

import Foundation

class Person {
    //Person attributes
    var firstName:String?
    var lastName:String?
    var age:Int?
    var city:String?
    
    //Initializes a person object
    init(firstName firstNameGiven:String, lastName lastNameGiven:String ,age ageGiven:Int, city cityGiven:String){
        firstName = firstNameGiven
        lastName = lastNameGiven
        age = ageGiven
        city = cityGiven
    }
}
