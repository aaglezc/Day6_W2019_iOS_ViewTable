//
//  CountryWithFlagsTableViewController.swift
//  Day6_W2019_iOS_ViewTable
//
//  Created by MacStudent on 2019-03-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CountryWithFlagsTableViewController: UITableViewController {

    
    var countryList : [Country]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        getInitialCountryList()
    }

    func getInitialCountryList()
    {
        countryList = []
        countryList.append(Country(countryCode: "CAD", countryName: "Canada", countryFlagImageName: "ca"))
        countryList.append(Country(countryCode: "MEX", countryName: "Mexico", countryFlagImageName: "mx"))
        countryList.append(Country(countryCode: "USA", countryName: "United States", countryFlagImageName: "us"))
        countryList.append(Country(countryCode: "BRA", countryName: "Brazil", countryFlagImageName: "br"))
        countryList.append(Country(countryCode: "CAD", countryName: "Canada", countryFlagImageName: "ca"))
        countryList.append(Country(countryCode: "CAD", countryName: "Canada", countryFlagImageName: "ca"))
        
    }
    
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //return 1
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.countryList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "countryIdentifier", for: indexPath)
        
        let country  = self.countryList[indexPath.row]
        cell.textLabel?.text = country.countryName
        cell.detailTextLabel?.text = country.countryCode
        cell.imageView?.image = UIImage(named: country.countryFlagImageName)

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
