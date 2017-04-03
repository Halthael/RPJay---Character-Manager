//
//  FirstInfoController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class FirstInfoController: UIViewController , CharacterProtocol {
    
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
        self.newCharacter?.characterIcon = UIImage(named: "default.png")!
        if(segue.identifier == "goToBackgroundSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    @IBAction func nextPressed(){
        performSegue(withIdentifier: "goToBackgroundSegue", sender: self.navigationController?.navigationItem.rightBarButtonItem)
    }

}
