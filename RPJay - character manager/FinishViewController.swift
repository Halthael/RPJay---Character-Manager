//
//  FinishViewController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController , CharacterProtocol {
    
    var newCharacter:Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func finishIsPressed(){
        //Saves character data:
        
        //Pop all views:
         self.navigationController?.popToRootViewController(animated: true)
    }

}
