//
//  CharacterSelectionController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 03/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit
import CoreData

class CharacterSelectionController: WoodenViewController, UITableViewDataSource, UITableViewDelegate, CharacterProtocol {

    @IBOutlet weak var tableView: UITableView!
    public var characterMemory:[Character]? = [Character]()
    var newCharacter: Character?
    let cellColors: [UIColor] = [#colorLiteral(red: 0.1731739938, green: 0.2433692515, blue: 0.4051870704, alpha: 1), #colorLiteral(red: 0.4762949347, green: 0, blue: 0.01199334674, alpha: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
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
                
                //BASICS
                character.objId = playerChar.objectID
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return characterMemory!.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToCharacterInfoSegue" , sender: characterMemory?[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharCell") as! CharacterCell

        cell.backgroundColor = UIColor.clear
        cell.background.backgroundColor = colorRotate(indexPath.row)
        cell.background.layer.cornerRadius = 8
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
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.delete){

            let toBeDeleted = characterMemory?.remove(at: indexPath.row)
            
            let request = NSFetchRequest<PlayerChar>(entityName: "PlayerChar")
            request.predicate = NSPredicate(format: "(SELF = %@)", (toBeDeleted?.objId)!)
            
            do {
                let result = try CMDataController.shared.performFetchRequest(request:request)
                
                let charToDelete = result[0]
                
                CMDataController.shared.delete(object: charToDelete)
                CMDataController.shared.saveContext()
            } catch {
                print("Erro!!!")
            }
            
        }
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToCharacterInfoSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            self.newCharacter = sender as! Character?
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    private func colorRotate(_ key: Int) ->UIColor{
        let index = key % 2
        return cellColors[index]
    }
    
}
