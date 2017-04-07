//
//  FinishViewController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit
import CoreData

class FinishViewController: UIViewController , CharacterProtocol {
    
    var newCharacter:Character?
    
    @IBOutlet weak var charIcon: UIImageView!
    @IBOutlet weak var charName: UILabel!
    //@IBOutlet weak var charGender: UILabel!
    @IBOutlet weak var charRaceClass: UILabel!
    @IBOutlet weak var charStory: UITextView!
    
    @IBOutlet weak var strengthValue: UILabel!
    @IBOutlet weak var agilityValue: UILabel!
    @IBOutlet weak var vitalityValue: UILabel!
    @IBOutlet weak var intelligenceValue: UILabel!
    @IBOutlet weak var charismaValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.charName.adjustsFontSizeToFitWidth = true
        self.charRaceClass.adjustsFontSizeToFitWidth = true

        
        //Character properties
        charIcon.image = UIImage(named:(newCharacter?.icon)!)
        charName.text = newCharacter?.name
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
    

    @IBAction func finishIsPressed(){
        //Saves character data:
        //CharacterSelectionController.characterMemory?.append(newCharacter!)
        
        let player:PlayerChar = NSEntityDescription.insertNewObject(forEntityName: "PlayerChar", into: CMDataController.shared.persistentContainer.viewContext) as! PlayerChar
        
        //BASICS
        player.name = newCharacter?.name
        player.gender = newCharacter?.gender
        player.race = newCharacter?.race
        player.classProfession = newCharacter?.profession
        player.story = newCharacter?.story
        player.icon = newCharacter?.icon
        //SKILLS
        player.agility = Int16((newCharacter?.statusTable.agility)!)
        player.charisma = Int16((newCharacter?.statusTable.charisma)!)
        player.health = Int16((newCharacter?.statusTable.health)!)
        player.intelligence = Int16((newCharacter?.statusTable.intelligence)!)
        player.mana = Int16((newCharacter?.statusTable.mana)!)
        player.strenght = Int16((newCharacter?.statusTable.strength)!)
        player.vitality = Int16((newCharacter?.statusTable.vitality)!)
        
        CMDataController.shared.saveContext()
        
        print(player)
        
        //Pop all views:
         self.navigationController?.popToRootViewController(animated: true)
    }

}
