//
//  AddInTableViewController.swift
//  BfastBowlBldr
//
//  Created by James Slusser on 9/20/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

class AddInTableViewController: UITableViewController {
    
    var addinImages = [String]()
    var addinNames = [String]()
    var addinCopy = [String]()
    var addinInfo = [String]()
    var addinPurch = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        addinImages = ["icon.jpg",
                       "icon.jpg",
                       "ChiaSeeds.jpg",
                       "icon.jpg",
                       "DateRed.jpg",
                       "Datemedjool.jpg",
                       "Goji.jpg",
                       "icon.jpg",
                       "icon.jpg",
                       "icon.jpg",
                       "icon.jpg",
                       "icon.jpg"
        ]
        
        addinNames = ["Black Pepper",
                      "Cacao powder",
                      "Chia Seeds",
                      "Cinnamon",
                      "Dates - Red",
                      "Dates - Medjool",
                      "Goji Berries",
                      "Matcha",
                      "Moringa",
                      "Prune",
                      "Raisin",
                      "Turmeric"
        ]
        
        addinCopy = ["Black Pepper copy",
                     "Cacao powder copy",
                     "Chia Seeds copy",
                     "Cinnamon copy",
                     "Dates - Red copy",
                     "Dates - Medjool copy",
                     "Goji Berries copy",
                     "Matcha copy",
                     "Moringa copy",
                     "Prune copy",
                     "Raisin copy",
                     "Turmeric copy"
        ]
        
        addinInfo = ["https://en.wikipedia.org",
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
                     "https://en.wikipedia.org"]
        
        addinPurch = ["https://www.amazon.com",
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
                      "https://www.amazon.com"]
        
        
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
        return addinNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "AddInTableCell", for: indexPath) as! AddInTableViewCell
     
     let row = indexPath.row
     cell.addinName.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
     cell.addinName.text = addinNames[row]
     cell.addinImage.image = UIImage(named: addinImages[row])

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
        if segue.identifier == "ShowAddinDetails" {
            let detailViewController = segue.destination as! IngredientDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.ingredientDetailImages = addinImages[row]
            detailViewController.ingredientAddlCopy = addinCopy[row]
            detailViewController.ingredientMoreInfo = addinInfo[row]
            detailViewController.ingredientPurchase = addinPurch[row]
        }
    }
 

}
