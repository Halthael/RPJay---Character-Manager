//
//  Character.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class Character: NSObject {
    
    public private(set) var characterName:String
    public private(set) var characterClass:String
    public private(set) var characterRace:String
    public private(set) var characterStory:String
    public private(set) var health:Int
    public private(set) var mana:Int
    public private(set) var strength:Int
    public private(set) var intelligence:Int
    public private(set) var agility:Int
    public private(set) var vitality:Int
    public private(set) var charisma:Int
   
    override init(){
        self.characterName = String()
        self.characterClass = String()
        self.characterRace = String()
        self.characterStory = String()
        self.health = 100
        self.mana = 100
        self.strength = 10
        self.intelligence = 10
        self.agility = 10
        self.vitality = 10
        self.charisma = 10
        super.init()
    }
}
