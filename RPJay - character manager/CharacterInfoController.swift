//
//  CharacterInfoController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class CharacterInfoController: UIViewController, CharacterProtocol {
    
    var newCharacter: Character?
    
    @IBOutlet weak var charIcon: UIImageView!
    @IBOutlet weak var charName: UILabel!
    @IBOutlet weak var charGender: UILabel!
    @IBOutlet weak var charRaceClass: UILabel!
    @IBOutlet weak var charStory: UITextView!
    
    @IBOutlet weak var strengthValue: UILabel!
    @IBOutlet weak var agilityValue: UILabel!
    @IBOutlet weak var vitalityValue: UILabel!
    @IBOutlet weak var intelligenceValue: UILabel!
    @IBOutlet weak var charismaValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Character properties
        charIcon.image = UIImage(named: (newCharacter?.icon)!)
        charName.text = newCharacter?.name
        charGender.text = newCharacter?.gender
        charRaceClass.text = (newCharacter?.race)!+" "+(newCharacter?.profession)!
        charStory.text = newCharacter?.story
        
        //Character status
        strengthValue.text = "\(newCharacter!.statusTable.strength)"
        agilityValue.text = "\(newCharacter!.statusTable.agility)"
        vitalityValue.text = "\(newCharacter!.statusTable.vitality)"
        intelligenceValue.text = "\(newCharacter!.statusTable.intelligence)"
        charismaValue.text = "\(newCharacter!.statusTable.charisma)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
