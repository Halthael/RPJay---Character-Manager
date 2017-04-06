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
    public var statusTable:StatusTable
    
    override init(){
        self.characterIcon = UIImage()
        self.characterName = String()
        self.characterClass = String()
        self.characterRace = String()
        self.characterStory = String()
        self.characterGender = String()
        self.statusTable = StatusTable()
        super.init()
    }
}
