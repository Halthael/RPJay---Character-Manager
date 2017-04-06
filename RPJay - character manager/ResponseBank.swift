//
//  ResponseBank.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation

class ResponseBank{
    
    static func respond(response: [String], index: Int, a: Bool, b: Bool, c: Bool) -> [String]{
        var newResponse = response
        
        switch index{
        case 0:
            if(a){
                newResponse[0] = "I'm very brave and confident, however my ambition may lead me to dangerous paths."
            }else if(b){
                newResponse[0] = "I'm wise and passionate for life, interested in the mysteries of the universe."
            }else if(c){
                newResponse[0] = "I'm one that lives one day after the other, but my dreams make me fly high!"
            }
        case 1:
            if(a){
                newResponse[1] = "Honest and caring, I worry about the others well being."
            }else if(b){
                newResponse[1] = "Malicious and cunning, I'm always ready to seize an opportunity."
            }else if(c){
                newResponse[1] = "Very afraid of the world's threats, I often pick my own security."
            }
        case 2:
            if(a){
                newResponse[2] = "I believe in the divine(s) and my actions are guided by them."
            }else if(b){
                newResponse[2] = "The world is full of obstacles, but my mission is to overcome them."
            }else if(c){
                newResponse[2] = "I'm always ready to engage on any task or fight!"
            }
        default:
            print("Invalid question")
        }
        
        
        return newResponse
    }
}
