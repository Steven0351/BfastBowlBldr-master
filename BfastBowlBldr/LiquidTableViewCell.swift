//
//  LiquidTableViewCell.swift
//  BfastBowlBldr
//
//  Created by James Slusser on 9/20/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit



class LiquidTableViewCell: UITableViewCell {
    
    func switchButtonTapped(WithStatus status: Bool, ForCell myCell: LiquidTableViewCell) {
        
    }
    
    
  
    
    @IBOutlet weak var liquidImage: UIImageView!
    
    @IBOutlet weak var liquidName: UILabel!
     
    @IBOutlet weak var liquidSwitch: UISwitch!
    
    @IBAction func switchSelected(_ sender: UISwitch) {
       //  self.delegate?.switchButtonTapped(WithStatus: sender.isOn, ForCell: self)
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
