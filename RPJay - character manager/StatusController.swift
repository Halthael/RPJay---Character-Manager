//
//  StatusController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class StatusController: UIViewController , CharacterProtocol {
    
    var newCharacter:Character?
    
    @IBOutlet weak var strengthSlider: UISlider!
    @IBOutlet weak var agilitySlider: UISlider!
    @IBOutlet weak var vitalitySlider: UISlider!
    @IBOutlet weak var intelligenceSlider: UISlider!
    @IBOutlet weak var charismaSlider: UISlider!
    
    var prioritiesTable:PrioritiesTable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prioritiesTable = PrioritiesTable(str: 1, agi: 1, vit: 1, int: 1, cha: 1)
        
        strengthSlider.isContinuous = true
        agilitySlider.isContinuous = true
        vitalitySlider.isContinuous = true
        intelligenceSlider.isContinuous = true
        charismaSlider.isContinuous = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        newCharacter?.statusTable = StatusTable()
        strengthSlider.value = Float((prioritiesTable?.strengthPrio)!)
        agilitySlider.value = Float((prioritiesTable?.agilityPrio)!)
        vitalitySlider.value = Float((prioritiesTable?.vitalityPrio)!)
        intelligenceSlider.value = Float((prioritiesTable?.intelligencePrio)!)
        charismaSlider.value = Float ((prioritiesTable?.charismaPrio)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newStatus = StatusSelection.setStatus(table: (newCharacter?.statusTable)!, priorities: prioritiesTable!)
        newCharacter?.statusTable = newStatus
        
        if(segue.identifier == "goToFinishSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sender.value = Float(Int(sender.value+0.5))
        
        switch sender.tag{
        case 0:
            prioritiesTable?.strengthPrio = Int(round(Double(sender.value)))
        case 1:
            prioritiesTable?.agilityPrio = Int(round(Double(sender.value)))
        case 2:
            prioritiesTable?.vitalityPrio = Int(round(Double(sender.value)))
        case 3:
            prioritiesTable?.intelligencePrio = Int(round(Double(sender.value)))
        case 4:
            prioritiesTable?.charismaPrio = Int(round(Double(sender.value)))
        default:
            print("Error message")
        }
    }
    
}
