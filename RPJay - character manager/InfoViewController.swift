//
//  InfoViewController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 29/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class InfoViewController: WoodenViewController {

    @IBOutlet weak var paperBack: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paperBack.image = UIImage(named: "paper.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
