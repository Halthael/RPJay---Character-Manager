//
//  LaunchScreenController.swift
//  RPJay - character manager
//
//  Created by Rafael Tomaz Prado on 07/04/17.
//  Copyright © 2017 Juliane Vianna. All rights reserved.
//

import UIKit

class LaunchScreenController: UIViewController {

    @IBOutlet weak var knight: UIImageView!
    @IBOutlet weak var archer: UIImageView!
    @IBOutlet weak var mage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        knight.image = UIImage(named: "knight.png")
        archer.image = UIImage(named: "archer.png")
        mage.image = UIImage(named: "mage.png")
        label.text = "RPJay - Character Manager"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
