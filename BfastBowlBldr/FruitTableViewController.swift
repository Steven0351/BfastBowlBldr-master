//
//  FruitTableViewController.swift
//  BfastBowlBldr
//
//  Created by James Slusser on 9/20/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

class FruitTableViewController: UITableViewController {
    
    var fruitImages = [String]()
    var fruitNames = [String]()
    var fruitCopy = [String]()
    var fruitInfo = [String]()
    var fruitPurch = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruitImages = [
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg",
            "icon.jpg"
        ]
        
        fruitNames = [
        "Apple",
        "Apricot",
        "Banana",
        "Blackberries",
        "Blueberries",
        "Cantaloupe",
        "Cherries",
        "Dragon Fruit",
        "Grapes",
        "Honeydew melon",
        "Kiwi",
        "Mango",
        "Orange",
        "Pineapple",
        "Raspberries",
        "Watermelon"
        ]
        
        fruitCopy = [
        "Apple copy",
        "Apricot copy",
        "Banana copy",
        "Blackberries copy",
        "Blueberries copy",
        "Cantaloupe copy",
        "Cherries copy",
        "Dragon Fruit copy",
        "Grapes copy",
        "Honeydew melon copy",
        "Kiwi copy",
        "Mango copy",
        "Orange copy",
        "Pineapple copy",
        "Raspberries copy",
        "Watermelon copy"
        ]
        
        fruitInfo = [
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org",
        "https://en.wikipedia.org"
        ]
        
        fruitPurch = [
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com",
        "https://www.amazon.com"
        ]
        
        
        tableView.estimatedRowHeight = 50

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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruitNames.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "FruitTableCell", for: indexPath) as! FruitTableViewCell
     
     let row = indexPath.row
     cell.fruitName.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
     cell.fruitName.text = fruitNames[row]
     cell.fruitImage.image = UIImage(named: fruitImages[row])

        // Configure the cell...

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowFruitDetails" {
            let detailViewController = segue.destination as! IngredientDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.ingredientDetailImages = fruitImages[row]
            detailViewController.ingredientAddlCopy = fruitCopy[row]
            detailViewController.ingredientMoreInfo = fruitInfo[row]
            detailViewController.ingredientPurchase = fruitPurch[row]
        }
    }
    
 

}
