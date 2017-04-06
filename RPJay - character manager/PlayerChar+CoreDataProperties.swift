//
//  PlayerChar+CoreDataProperties.swift
//  RPJay - character manager
//
//  Created by Rhullian Damião on 06/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation
import CoreData


extension PlayerChar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayerChar> {
        return NSFetchRequest<PlayerChar>(entityName: "PlayerChar")
    }

    @NSManaged public var name: String?
    @NSManaged public var classProfession: String?
    @NSManaged public var race: String?
    @NSManaged public var story: String?
    @NSManaged public var gender: String?
    @NSManaged public var health: Int16
    @NSManaged public var mana: Int16
    @NSManaged public var strenght: Int16
    @NSManaged public var intelligence: Int16
    @NSManaged public var agility: Int16
    @NSManaged public var vitality: Int16
    @NSManaged public var charisma: Int16

}
