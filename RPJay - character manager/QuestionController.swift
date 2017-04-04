//
//  QuestionController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 04/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation
import UIKit

class QuestionController: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var aAnswer: UILabel!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var bAnswer: UILabel!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var cAnswer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
