//
//  Character.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class Character: NSObject {
    private var characterName:String{
        get{
            return self.characterName
        }
        set{
            self.characterName = newValue
        }
    }
    private var characterClass:String{
        get{
            return self.characterClass
        }
        set{
            self.characterClass = newValue
        }
    }
    private var characterRace:String{
        get{
            return self.characterRace
        }
        set{
            self.characterRace = newValue
        }
    }
    
    private var health:Int{
        get{
            return self.health
        }
        set{
            self.health = newValue
        }
    }
    private var mana:Int{
        get{
            return self.mana
        }
        set{
            self.mana = newValue
        }
    }
    private var strenght:Int{
        get{
            return self.strenght
        }
        set{
            self.strenght = newValue
        }
    }
    private var intelligence:Int{
        get{
            return self.intelligence
        }
        set{
            self.intelligence = newValue
        }
    }
    private var agility:Int{
        get{
            return self.agility
        }
        set{
            self.agility = newValue
        }
    }
    private var vitality:Int{
        get{
            return self.vitality
        }
        set{
            self.vitality = newValue
        }
    }
    private var charisma:Int{
        get{
            return self.charisma
        }
        set{
            self.charisma = newValue
        }
    }
    
    public override init(){
        super.init()
        self.characterName = String()
        self.characterClass = String()
        self.characterRace = String()
        self.health = 100
        self.mana = 100
        self.strenght = 10
        self.intelligence = 10
        self.agility = 10
        self.vitality = 10
        self.charisma = 10
    }
}
