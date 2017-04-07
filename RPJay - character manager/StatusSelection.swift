//
//  StatusSelection.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation


class StatusSelection{
    static func setStatus(table: StatusTable, priorities: PrioritiesTable) -> StatusTable{
        var newTable = table
        
        newTable.strength += Int(round(Double(12 * priorities.strengthPrio / priorities.totalPrio)))
        
        newTable.agility += Int(round(Double(12 * priorities.agilityPrio / priorities.totalPrio)))
        
        newTable.intelligence += Int(round(Double(12 * priorities.intelligencePrio / priorities.totalPrio)))
        
        newTable.vitality += Int(round(Double(12 * priorities.vitalityPrio / priorities.totalPrio)))
        
        newTable.charisma += Int(round(Double(12 * priorities.charismaPrio / priorities.totalPrio)))
        
        newTable.health = 10*table.vitality
        newTable.mana = 12*table.intelligence
        
        return newTable
    }
    
}
