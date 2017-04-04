//
//  GenerateStoryController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class GenerateStoryController: UIViewController , CharacterProtocol {
    
    var newCharacter:Character?
    var condition = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToStatusGSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == "goToStatusGSegue"){
            if(condition == true){
                return false
            }
        }
        return true
    }
}
