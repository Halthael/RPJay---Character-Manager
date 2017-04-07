//
//  QuestionController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 04/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation
import UIKit

class QuestionCell: UITableViewCell {
    
    weak var delegate: QuestionProtocol? = nil
    
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
    
    @IBAction func buttonPressed(_ sender: UIButton){
        switch sender{
        case aButton:
            aAnswer.font = UIFont.boldSystemFont(ofSize: 17.0)
            aAnswer.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            bAnswer.font = UIFont.systemFont(ofSize: 17.0)
            bAnswer.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cAnswer.font = UIFont.systemFont(ofSize: 17.0)
            cAnswer.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            delegate?.setAnswer(tableViewCell: self, a: true, b: false, c: false)
        case bButton:
            aAnswer.font = UIFont.systemFont(ofSize: 17.0)
            aAnswer.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            bAnswer.font = UIFont.boldSystemFont(ofSize: 17.0)
            bAnswer.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            cAnswer.font = UIFont.systemFont(ofSize: 17.0)
            cAnswer.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            delegate?.setAnswer(tableViewCell: self, a: false, b: true, c: false)
        case cButton:
            aAnswer.font = UIFont.systemFont(ofSize: 17.0)
            aAnswer.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            bAnswer.font = UIFont.systemFont(ofSize: 17.0)
            bAnswer.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cAnswer.font = UIFont.boldSystemFont(ofSize: 17.0)
            cAnswer.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            delegate?.setAnswer(tableViewCell: self, a: false, b: false, c: true)
        default:
            print("invalid option")
        }
    }
    
}
