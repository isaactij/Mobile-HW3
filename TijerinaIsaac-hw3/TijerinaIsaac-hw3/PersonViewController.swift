//
//  PersonViewController.swift
//  TijerinaIsaac-hw3
//
//  Created by Isaac on 2/10/18.
//  Copyright © 2018 TijerinaIsaac. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    //The connections to the labels on the Person View
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var firstName: UILabel!
    
    //Variables for what is sent through the segue and the person sent
    var viaSegue:Person!
    var person:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Gets the sent person
        person = viaSegue
        //Ssts the labels to the values in the person
        firstName.text = person.firstName
        lastName.text = person.lastName
        age.text = "\(person.age!)"
        city.text = person.city
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
