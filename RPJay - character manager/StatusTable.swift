//
//  StatusTable.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation

struct StatusTable{
    public var health:Int
    public var mana:Int
    public var strength:Int
    public var intelligence:Int
    public var agility:Int
    public var vitality:Int
    public var charisma:Int
    
    init(){
        self.health = 100
        self.mana = 100
        self.strength = 10
        self.intelligence = 10
        self.agility = 10
        self.vitality = 10
        self.charisma = 10
    }
}
