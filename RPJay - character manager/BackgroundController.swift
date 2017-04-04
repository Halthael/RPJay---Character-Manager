//
//  BackgroundController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class BackgroundController: UIViewController , CharacterProtocol {
    
    var newCharacter:Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToWriteSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
        if(segue.identifier == "goToGenerateSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }

}
