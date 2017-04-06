//
//  FirstInfoController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class FirstInfoController: UIViewController , CharacterProtocol, UITextFieldDelegate {
    
    var newCharacter:Character?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var classField: UITextField!
    @IBOutlet weak var raceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        classField.delegate = self
        raceField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == "goToBackgroundSegue"){
            if (self.nameField.text?.isEmpty == true){
                self.nameField.shake()
                return false
            }
            if(self.classField.text?.isEmpty == true){
                self.classField.shake()
                return false
            }
            if(self.raceField.text?.isEmpty == true){
                self.raceField.shake()
                return false
            }
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.newCharacter?.characterName = nameField.text!
        self.newCharacter?.characterClass = classField.text!
        self.newCharacter?.characterRace = raceField.text!
        self.newCharacter?.characterIcon = UIImage(named: "default.png")!
        
        if(segue.identifier == "goToBackgroundSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
