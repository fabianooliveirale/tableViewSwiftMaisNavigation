//
//  OneTableViewCell.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import UIKit

class OneTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
