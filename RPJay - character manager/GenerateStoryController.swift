//
//  GenerateStoryController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 30/03/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class GenerateStoryController: UIViewController , UITableViewDataSource, UITableViewDelegate, CharacterProtocol {
    
    var newCharacter:Character?
    var condition = false
    var questions:[Question] = [Question]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        var quest = Question()
        quest.question = "How would you describe yourself?"
        quest.aAnswer = "A strong and independent adventurer with great ambitions"
        quest.bAnswer = "A wise and humble person, with great love for life"
        quest.cAnswer = "Just a regular person bored with the everyday routine"
        questions.append(quest)
        
        quest = Question()
        quest.question = "You are walking through a forest. You hear a lady crying for help. You run towards the voice and see a woman trapped on a net. What do you do?"
        quest.aAnswer =  "I cut the net and help her get to safety."
        quest.bAnswer =  "I seize the opportunity and rob her."
        quest.cAnswer =  "I run to the opposite direction, it is certainly a trap."
        questions.append(quest)
        
        quest = Question()
        quest.question = "Which of the following mottos define you best?"
        quest.aAnswer =  "Love the almighty god(s) above everything."
        quest.bAnswer =  "There is nothing to fear in life, only to understand."
        quest.cAnswer =  "Always vigilant."
        questions.append(quest)
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToStatusGSegue"){
            var destinationViewController = segue.destination as! CharacterProtocol
            destinationViewController.newCharacter = self.newCharacter
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == "goToStatusGSegue"){
            if(condition == true){
                return false
            }
        }
        return true
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return questions.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let question = tableView.dequeueReusableCell(withIdentifier: "Question") as! QuestionController
        // Edit cell options here:
        question.questionLabel.text = questions[indexPath.row].question
        question.aAnswer.text = questions[indexPath.row].aAnswer
        question.bAnswer.text = questions[indexPath.row].bAnswer
        question.cAnswer.text = questions[indexPath.row].cAnswer
        
        return question
    }
}
