//
//  CharacterSelectionController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 03/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class CharacterSelectionController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    public static var characterMemory:[Character]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CellController
        cell.icon.image = CharacterSelectionController.characterMemory?[indexPath.row].characterIcon
        cell.name.text = CharacterSelectionController.characterMemory?[indexPath.row].characterName
        cell.raceAndClass.text = (CharacterSelectionController.characterMemory?[indexPath.row].characterRace)!+" "+(CharacterSelectionController.characterMemory?[indexPath.row].characterClass)!
        cell.hpLabel.text = "HP:"
        cell.mpLabel.text = "MP:"
        cell.healthBar.progress = 1.0
        cell.manaBar.progress = 1.0
        return cell
    }

}

class CellController: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var raceAndClass:UILabel!
    @IBOutlet weak var hpLabel:UILabel!
    @IBOutlet weak var mpLabel:UILabel!
    @IBOutlet weak var healthBar:UIProgressView!
    @IBOutlet weak var manaBar:UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
