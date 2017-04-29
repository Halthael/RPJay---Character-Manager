//
//  RockCell.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 29/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class RockCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let background = UIImageView()
        background.frame = CGRect(x: 8, y: 2.5, width: 359, height: 125)
        background.image = UIImage(named: "charcoal.png")
        
        let whiteSquare = UIView(frame: CGRect(x: 8, y: 7.5, width: 343, height: 110))
        whiteSquare.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.1)
        
        background.addSubview(whiteSquare)
        self.addSubview(background)
        self.sendSubview(toBack: background)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
