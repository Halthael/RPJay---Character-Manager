//
//  FirstInfoController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class FirstInfoController: WoodenViewController , CharacterProtocol, UITextFieldDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var newCharacter:Character?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var classField: UITextField!
    @IBOutlet weak var raceField: UITextField!
    @IBOutlet weak var imageCollection: UICollectionView!
    
    private let imageNames = ["archer.png", "mage.png", "knight.png", "default.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        classField.delegate = self
        raceField.delegate = self
        
        imageCollection.delegate = self
        imageCollection.dataSource = self
//        self.automaticallyAdjustsScrollViewInsets = false
        imageCollection.layer.cornerRadius = 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        imageCollection.reloadData()
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
        self.newCharacter?.name = nameField.text!
        self.newCharacter?.profession = classField.text!
        self.newCharacter?.race = raceField.text!
        if(newCharacter?.icon == ""){
            self.newCharacter?.icon = "default.png"
        }
        
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(_ cellForItemAtcollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  imageCollection.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCell
        
        cell.imageView.frame = CGRect(x: 0, y: 0, width: cell.imageView.frame.width, height: cell.imageView.frame.height)
        cell.imageView.image = UIImage(named: imageNames[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ImageCell
        
        cell.imageView.layer.borderColor = UIColor.red.cgColor
        cell.imageView.layer.borderWidth = 2.0
        cell.imageView.layer.cornerRadius = 5.0
        
        self.newCharacter?.icon = imageNames[indexPath.row]
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ImageCell
        
        cell.imageView.layer.borderColor = UIColor.white.cgColor
        cell.imageView.layer.borderWidth = 0
        cell.imageView.layer.cornerRadius = 10
    }

}
