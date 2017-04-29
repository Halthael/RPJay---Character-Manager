//
//  CellController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 03/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation
import UIKit

class CharacterCell: RockCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var raceAndClass:UILabel!
    @IBOutlet weak var hpLabel:UILabel!
    @IBOutlet weak var mpLabel:UILabel!
    @IBOutlet weak var healthBar:UIProgressView!
    @IBOutlet weak var manaBar:UIProgressView!
//    @IBOutlet weak var cellBackground: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
