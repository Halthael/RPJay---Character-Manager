//
//  Character.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class Character: NSObject {
    private var characterName:String
    private var characterClass:String
    private var characterRace:String
    private var characterStatus:StatusTable
    
    public override init(name: String, cClass: String, race: String, status: StatusTable){
        self.characterName = name
        self.characterClass = cClass
        self.characterRace = race
        self.characterStatus = status
    }
}

class StatusTable {

}
