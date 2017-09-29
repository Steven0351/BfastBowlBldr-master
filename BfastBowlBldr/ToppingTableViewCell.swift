//
//  ToppingTableViewCell.swift
//  BfastBowlBldr
//
//  Created by James Slusser on 9/20/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

class ToppingTableViewCell: UITableViewCell {

    @IBOutlet weak var toppingImage: UIImageView!
   
    @IBOutlet weak var toppingName: UILabel!
    
    @IBAction func toppingSwitch(_ sender: UISwitch) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
