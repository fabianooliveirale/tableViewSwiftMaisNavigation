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
    
    @IBAction func buttonService(_ sender: Any) {
        ViaCepService(search: "81900-400") { (cepIn, errorIn) in
            DispatchQueue.main.async {
                if cepIn != nil {
                    self.mStreetTF.text = cepIn?.mStreet
                    self.mStateTF.text = cepIn?.mUF
                    self.mCityTF.text = cepIn?.mCity
                }
            }
            
        }
    }
}

