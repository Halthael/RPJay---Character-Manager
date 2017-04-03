//
//  Character.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class Character: NSObject {
    
    public var characterIcon:UIImage
    
    public var characterName:String
    public var characterClass:String
    public var characterRace:String
    public var characterStory:String
    public var characterGender:String
    
    public var health:Int
    public var mana:Int
    public var strength:Int
    public var intelligence:Int
    public var agility:Int
    public var vitality:Int
    public var charisma:Int
    
    override init(){
        self.characterIcon = UIImage()
        self.characterName = String()
        self.characterClass = String()
        self.characterRace = String()
        self.characterStory = String()
        self.characterGender = String()
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
