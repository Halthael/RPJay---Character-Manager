
//
//  QuestionBank.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation

class QuestionBank{
    
    public static func generate() -> [Question]{
        
        var questions = [Question]()
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
        
        return questions
    }
}
