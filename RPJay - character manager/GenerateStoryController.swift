//
//  GenerateStoryController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class GenerateStoryController: UIViewController , UITableViewDataSource, UITableViewDelegate, CharacterProtocol, QuestionProtocol {
    
    var newCharacter:Character?
    var questions:[Question] = [Question]()
    var answered = [false, false, false]
    var generatedBackground = ["", "", ""]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.allowsSelection = false
        tableView.reloadData()
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        questions = QuestionBank.generate()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        for str in generatedBackground{
            self.newCharacter?.characterStory.append(str+" ")
        }
        
        if(segue.identifier == "goToStatusGSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == "goToStatusGSegue"){
            if(answered[0] == false){
                tableView.cellForRow(at: IndexPath(row: 0, section: 0))?.shake()
                return false
            }
            if(answered[1] == false){
                tableView.cellForRow(at: IndexPath(row: 1, section: 0))?.shake()
                return false
            }
            if(answered[2] == false){
                tableView.cellForRow(at: IndexPath(row: 2, section: 0))?.shake()
                return false
            }
        }
        return true
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return questions.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let question = tableView.dequeueReusableCell(withIdentifier: "Question") as! QuestionCell
        // Edit cell options here:
        question.delegate = self
        question.questionLabel.text = questions[indexPath.row].question
        question.aAnswer.text = questions[indexPath.row].aAnswer
        question.bAnswer.text = questions[indexPath.row].bAnswer
        question.cAnswer.text = questions[indexPath.row].cAnswer
        
        return question
    }
    
    func setAnswer(tableViewCell: UITableViewCell, a: Bool, b: Bool, c: Bool) {
        let index = tableView.indexPath(for: tableViewCell)?.row
        
        answered[index!] = true
        generatedBackground = ResponseBank.respond(response: generatedBackground, index: index!, a: a, b: b, c: c)
        
        print(generatedBackground)
    }
}
