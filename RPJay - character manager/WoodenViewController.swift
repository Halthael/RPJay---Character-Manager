//
//  WoodenViewController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 28/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class WoodenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let background = UIImageView()
        background.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        background.image = UIImage(named: "wooden.png")
        self.view.addSubview(background)
        self.view.sendSubview(toBack: background)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
