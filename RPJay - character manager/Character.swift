//
//  Character.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class Character: NSObject {
    
    public var icon:String
    
    public var name:String
    public var profession:String
    public var race:String
    public var story:String
    public var gender:String
    public var statusTable:StatusTable
    
    override init(){
        self.icon = String()
        self.name = String()
        self.profession = String()
        self.race = String()
        self.story = String()
        self.gender = String()
        self.statusTable = StatusTable()
        super.init()
    }
}
