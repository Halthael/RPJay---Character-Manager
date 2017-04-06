//
//  QuestionProtocl.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation
import UIKit

protocol QuestionProtocol: NSObjectProtocol {
    func setAnswer(tableViewCell: UITableViewCell, a: Bool, b: Bool, c: Bool)
}
