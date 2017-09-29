//
//  IngredientTableViewController.swift
//  BfastBowlBldr
//
//  Created by James Slusser on 9/14/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

// test change

class IngredientTableViewController: UITableViewController, CellProtocol {
    
    struct Ingredient {
        let name: String
        let imageString: String
        let copy: String
        let info: String
        let purchaseURL: String
        let type: IngredientType
    }
    
    enum IngredientType {
        case grain, liquid, fruit, addIn, topping
    }
    
    var ingredients = [Ingredient]()
    
    var grainImages = [String]()
    var grainNames = [String]()
    var grainCopy = [String]()
    var grainInfo = [String]()
    var grainPurch = [String]()
    
    func switchButtonTapped(WithStatus status: Bool, ForCell myCell: IngredientTableViewCell) {
        
        let indexPath = self.tableView.indexPath(for: myCell)
        print("cell at indexpath \(String(describing: indexPath)) tapped with switch status \(status)")
        
        let grainSwitchSelected = myCell.ingredientName.text!
        print("Grain selected was \(String(describing: grainSwitchSelected))")
    }
    
    
    @IBAction func grainSelected(_ sender: UIButton) {
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for i in 0 ..< grainCopy.count {
            let newIngredient = Ingredient(name: grainNames[i],
                                           imageString: grainImages[i],
                                           copy: grainCopy[i],
                                           info: grainInfo[i],
                                           purchaseURL: grainPurch[i],
                                           type: .grain)
            ingredients.append(newIngredient)
        }
        
        grainImages = [
            "Barley.jpg",
            "Buckwheat.jpg",
            "Bulgur.jpg",
            "Couscous.jpg",
            "Oatmeal.jpg",
            "Quinoa.jpg",
            "icon.jpg"
        ]
        
        grainNames = [
            "Barley",
            "Buckwheat Groats",
            "Bulgur",
            "Cous Cous (Pearl)",
            "Oatmeal",
            "Quinoa",
            "Rice"
        ]
        
        grainCopy = [
            "Pearled Barley - one of the first grains ever cultivated - is a nice one to try if you haven't cooked with it recently.  Do use it cooked.",
            "I like to include 1 Tablespoon or more of Buckwheat Groats with whatever other grain I select, as I find it retains it's crunchy texture and is a nice contrast to my usual Oatmeal, or a cooked grain.  I simply toss them in raw - no cooking required.",
            "Bulgur Wheat is also a good choice if you need a change.  Do cook it in advance - it couldn't be any easier to make - and I love the Nutty flavor and it couldn't be any easier to make.",
            "I like the larger Pearl (or Israeli) Cous Cous for a change of pace.  I usually opt for the whole wheat version, but any will do.  Use it cooked, and if you are making some other Cous Cous dish, set aside a bit for your Breakfast Bowl experimentation.",
            "Oatmeal is my go-to grain of choice.  I use it raw, as the overnight soaking does the trick.  There are several varieties to choose from (traditional, steel cut, fast-cooking), so experiment and find a brand and style that works for you",
            "Quinoa is another go-to grain choice for me.  If I cook a big batch on a Sunday, I'll set aside some to use in bowls during the week.",
            "There are so many varieties of Rice to choose from that you just need to start with one and work your way through all of the choices.  Brown and Black are my current favorites.  If you like this, you should check out Congee for another breakfast (or any meal!) treat."
        ]
        
        grainInfo = [
            "https://draxe.com/barley-nutrition/",
            "https://draxe.com/buckwheat-nutrition/",
            "https://draxe.com/bulgur-wheat/",
            "https://en.wikipedia.org",
            "https://en.wikipedia.org",
            "https://en.wikipedia.org",
            "https://en.wikipedia.org",]
        
        grainPurch = [
            "https://www.amazon.com/Bobs-Red-Mill-Pearl-Barley/dp/B004T33Y8O/ref=sr_1_6_a_it?th=1",
            "https://www.amazon.com/Arrowhead-Mills-Organic-Buckwheat-Groats/dp/B00X2SEAXA/ref=sr_1_1_s_it",
            "https://www.amazon.com/Bobs-Red-Mill-Bulgur-Wheat/dp/B0013JK0KM/ref=sr_1_3_s_it",
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
        return grainNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientTableCell", for: indexPath) as! IngredientTableViewCell
        
        let row = indexPath.row
        cell.ingredientName.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cell.ingredientName.text = ingredients[row].name
        cell.ingredientImage.image = UIImage(named: ingredients[row].imageString)
      //  cell.ingredientSwitch.isOn
        // Configure the cell...
        cell.delegate = self

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
        if segue.identifier == "ShowGrainDetails" {
            let detailViewController = segue.destination as! IngredientDetailViewController
            //detailViewController.ingredients = ingredients
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.ingredientDetailImages = grainImages[row]
            detailViewController.ingredientAddlCopy = grainCopy[row]
            detailViewController.ingredientMoreInfo = grainInfo[row]
            detailViewController.ingredientPurchase = grainPurch[row]
        }
       
        if segue.identifier == "SelectLiquid" {
            let LiquidTableViewController = segue.destination as! IngredientTableViewController
            LiquidTableViewController.ingredients = ingredients
        }
    }
    
    
}
