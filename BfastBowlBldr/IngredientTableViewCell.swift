//
//  IngredientTableViewCell.swift
//  BfastBowlBldr
//
//  Created by James Slusser on 9/14/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

protocol CellProtocol : class {
    func switchButtonTapped(WithStatus status : Bool , ForCell myCell : IngredientTableViewCell)
    }



class IngredientTableViewCell: UITableViewCell {
    
    weak var delegate : CellProtocol?
   
    @IBOutlet weak var ingredientImage: UIImageView!
    
    @IBOutlet weak var ingredientName: UILabel!
    
    @IBOutlet weak var ingredientSwitch: UISwitch!
    
    @IBAction func switchSelected(_ sender: UISwitch) {
        
        self.delegate?.switchButtonTapped(WithStatus: sender.isOn, ForCell: self)
    }
    
//        if ingredientSwitch.isOn {
//            onCall()
//            // print("Switch is on")
//            ingredientSwitch.setOn(true, animated: true)
//        } else {
//            offCall()
//            //print("Switch is off")
//            ingredientSwitch.setOn(false, animated: true)
//       }
//    }
//
//    func onCall() {
//       print("Switch is on")
//    }
//
//    func offCall() {
//        print("Switch is off")
//    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
// the following is left over from the stackoverflow solution - I think its safe to delete
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        self.delegate?.switchButtonTapped(WithStatus: selected, ForCell: self)

        // Configure the view for the selected state
 //   }

}
