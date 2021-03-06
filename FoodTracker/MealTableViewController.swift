//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Pranav Sharma on 03/10/18.
//  Copyright © 2018 Pranav Sharma. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    //MARK: Properties
    var meals = [Meal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMeals()
    }

    // MARK: - Table view data source

    // tells how many sections are required (visual groupings of cells, useful when there is a lot of data)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    //  tells how many rows to display per section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MealTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell else {
            fatalError("The dequeued cell is not an instance of MealTbaleViewCell")
        }
        
        let meal = meals[indexPath.row]
        // Configure the cell...
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating

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
    
    //MARK: Private methods
    
    private func loadSampleMeals() {
        let photo1 = UIImage(named: "tractor")
        let photo2 = UIImage(named: "car")
        let photo3 = UIImage(named: "airplane")
        
        guard let meal1 = Meal(name: "TRACTOR", photo: photo1, rating: 4) else {
            fatalError("Unable to instantiate Meal1")
        }
        
        guard let meal2 = Meal(name: "CAR", photo: photo2, rating: 5) else {
            fatalError("Unable to instantiate Meal2")
        }
        
        guard let meal3 = Meal(name: "AIRPLANE", photo: photo3, rating: 3) else {
            fatalError("Unable to instantiate Meal3")
        }
        
        meals += [meal1, meal2, meal3]
    }

}
