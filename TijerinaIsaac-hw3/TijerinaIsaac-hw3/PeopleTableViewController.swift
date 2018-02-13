//
//  PeopleTableViewController.swift
//  TijerinaIsaac-hw3
//
//  Created by Isaac on 2/10/18.
//  Copyright © 2018 TijerinaIsaac. All rights reserved.
//

import UIKit

class PeopleTableViewController: UITableViewController {
    //Creates an empty array of Persons of size 10
    private var people:[Person?] = [Person?](repeating:nil, count:10)
    
    //Adds the persons to the people array
    private func createDataModel(){
        //people = [Person](repeating: nil, count: 10)
        people[0] = Person.init(firstName: "Bob", lastName: "Carpenter", age: 35, city: "Austin")
        people[1] = Person.init(firstName: "John", lastName: "Jones", age: 8, city: "Boston")
        people[2] = Person.init(firstName: "Led", lastName: "Zeppelin", age: 73, city: "Paris")
        people[3] = Person.init(firstName: "Sam", lastName: "Smith", age: 34, city: "Sydney")
        people[4] = Person.init(firstName: "June", lastName: "Johnson", age: 12, city: "Vienna")
        people[5] = Person.init(firstName: "Allison", lastName: "Atwater", age: 21, city: "Venice")
        people[6] = Person.init(firstName: "Donald", lastName: "Trump", age: 56, city: "Munich")
        people[7] = Person.init(firstName: "Hillary", lastName: "Clinton", age: 69, city: "Brussels")
        people[8] = Person.init(firstName: "Barrack", lastName: "Obama", age: 53, city: "Tokyo")
        people[9] = Person.init(firstName: "Teddy", lastName: "Roosevelt", age: 70, city: "Shanghai")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createDataModel()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = people[indexPath.row]!.firstName! + " " + people[indexPath.row]!.lastName!
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Checks to see if the segue identifier is correct
        if segue.identifier == "SendDataSegue" {
            if let destination = segue.destination as? PersonViewController {
                let path = tableView.indexPathForSelectedRow
                let cell = tableView.cellForRow(at: path!)
                var found:Bool = false
                var index:Int = 0
                //Looks for the selected person in the people array
                while !found || index > people.count {
                    let text:String = people[index]!.firstName! + " " + people[index]!.lastName!
                    if(text == cell?.textLabel?.text!){
                        found = true
                    }else{
                        index = index + 1
                    }
                }
                //Sends the selected person
                destination.viaSegue = people[index]
            }
        }
    }
    

}
