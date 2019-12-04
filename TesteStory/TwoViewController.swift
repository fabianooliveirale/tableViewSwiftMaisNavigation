//
//  TwoViewController.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list: [String] = []
    @IBOutlet weak var tableViewTwo: UITableView!
    
    // MARK: - Table view data source

    override func viewDidLoad() {
           super.viewDidLoad()

           list = ["One","One","One","One","One","One","One","One","One","One","One"]
           tableViewTwo.reloadData()
       }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "twoCell", for: indexPath) as! TwoTableViewCell
        
        let item = list[indexPath.row]
        
        cell.label.text = item
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
