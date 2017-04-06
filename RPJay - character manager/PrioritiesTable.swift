//
//  PrioritiesTable.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation

class PrioritiesTable{
    
    var strengthPrio:Int
    {
        didSet{
            self.update()
        }
    }
    var agilityPrio:Int
    {
        didSet{
            self.update()
        }
    }
    var vitalityPrio:Int
    {
        didSet{
            self.update()
        }
    }
    var intelligencePrio:Int
    {
        didSet{
            self.update()
        }
    }
    var charismaPrio:Int
    {
        didSet{
            self.update()
        }
    }
    
    var totalPrio:Int
    
    init(str: Int, agi: Int, vit: Int, int: Int, cha: Int){
        strengthPrio = str
        agilityPrio = agi
        vitalityPrio = vit
        intelligencePrio = int
        charismaPrio = cha
        totalPrio = str+agi+vit+int+cha
    }
    
    private func update(){
        self.totalPrio = self.agilityPrio+self.charismaPrio+self.intelligencePrio+self.strengthPrio+self.vitalityPrio
    }
}
