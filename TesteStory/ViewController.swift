//
//  ViewController.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonTableOne(_ sender: UIButton) {
        performSegue(withIdentifier: "pushTableView", sender: nil)
    }
    
    @IBAction func buttonTableTwo(_ sender: Any) {
        performSegue(withIdentifier: "pushTableViewCustom", sender: nil)
    }
}

