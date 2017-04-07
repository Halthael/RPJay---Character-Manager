//
//  GenderSelectionController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class GenderSelectionController: UIViewController, CharacterProtocol {
    
    var newCharacter:Character?
    
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var genderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let gender = newCharacter?.gender{
            genderLabel.text = gender
        }else{
            genderLabel.text = String()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        newCharacter = Character()
    }
    
    @IBAction func genderButtonPressed(_ sender: UIButton){
        
        if sender == maleButton {
            newCharacter?.gender = "Male"
            genderLabel.text = "Male"
        }
        
        if sender == femaleButton {
            newCharacter?.gender = "Female"
            genderLabel.text = "Female"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToFirstInfoSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == "goToFirstInfoSegue"){
            if(genderLabel.text?.isEmpty == true){
                maleButton.shake()
                femaleButton.shake()
                return false
            }
        }
        return true
    }
}
