//
//  CharacterSelectionController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 03/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit
import CoreData

class CharacterSelectionController: UIViewController, UITableViewDataSource, UITableViewDelegate, CharacterProtocol {

    @IBOutlet weak var tableView: UITableView!
    public var characterMemory:[Character]? = [Character]()
    var newCharacter: Character?
    let cellColors: [UIColor] = [UIColor(red:0.10, green:0.20, blue:0.25, alpha:1.0), UIColor(red:0.24, green:0.38, blue:0.44, alpha:1.0), UIColor(red:0.42, green:0.62, blue:0.77, alpha:1.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    fileprivate  func getAllCharacters() -> [Character] {
        var storedUsers: [Character]
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PlayerChar")
        do {
            let results = try CMDataController.shared.performFetchRequest(request: request)
            storedUsers = results.map({ (anyEntity) -> Character in
                
                let playerChar = anyEntity as! PlayerChar
                
                let character = Character()
                
                // TODO: fill character
                //BASICS
                character.name = playerChar.name!
                character.gender = playerChar.gender!
                character.profession = playerChar.classProfession!
                character.race = playerChar.race!
                character.story = playerChar.story!
                character.icon = playerChar.icon!
                
                //SKILLS
                character.statusTable.agility = Int(playerChar.agility)
                character.statusTable.charisma = Int(playerChar.charisma)
                character.statusTable.health = Int(playerChar.health)
                character.statusTable.intelligence = Int(playerChar.intelligence)
                character.statusTable.mana = Int(playerChar.mana)
                character.statusTable.strength = Int(playerChar.strenght)
                character.statusTable.vitality = Int(playerChar.vitality)
                
                return character
            })
        } catch {
            storedUsers = [Character]()
        }
        
        return storedUsers
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        characterMemory = self.getAllCharacters()
        tableView.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return characterMemory!.count
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToCharacterInfoSegue" , sender: characterMemory?[indexPath.row])
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharCell") as! CharacterCell
        
        cell.backgroundColor = colorRotate(indexPath.row)
        cell.icon.frame = CGRect(x: 0, y: 10, width: cell.icon.frame.width, height: cell.icon.frame.height)
        cell.icon.image = UIImage(named: (characterMemory?[indexPath.row].icon)!)
        cell.name.text = characterMemory?[indexPath.row].name
        cell.raceAndClass.text = (characterMemory?[indexPath.row].race)!+" "+(characterMemory?[indexPath.row].profession)!
        cell.hpLabel.text = "HP:"
        cell.mpLabel.text = "MP:"
        cell.healthBar.progress = 1.0
        cell.manaBar.progress = 1.0
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToCharacterInfoSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            self.newCharacter = sender as! Character?
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    private func colorRotate(_ key: Int) ->UIColor{
        let index = key % 3
        return cellColors[index]
    }
    
}
