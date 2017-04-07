//
//  CharConverter.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 07/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation
import CoreData

class TypeConverter{
    
    public static func charToPlayer(char: Character)->PlayerChar{
        
        let player:PlayerChar = NSEntityDescription.insertNewObject(forEntityName: "PlayerChar", into: CMDataController.shared.persistentContainer.viewContext) as! PlayerChar
        
        
        //BASICS
        player.name = char.name
        player.gender = char.gender
        player.race = char.race
        player.classProfession = char.profession
        player.story = char.story
        player.icon = char.icon
        //SKILLS
        player.agility = Int16((char.statusTable.agility))
        player.charisma = Int16((char.statusTable.charisma))
        player.health = Int16((char.statusTable.health))
        player.intelligence = Int16((char.statusTable.intelligence))
        player.mana = Int16((char.statusTable.mana))
        player.strenght = Int16((char.statusTable.strength))
        player.vitality = Int16((char.statusTable.vitality))
        
        return player
    }
}
