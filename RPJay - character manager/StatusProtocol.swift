//
//  StatusProtocl.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 05/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import Foundation


protocol StatusProtocol: NSObjectProtocol{
    func setStatus(table: StatusTable, priorities: PrioritiesTable)
}
