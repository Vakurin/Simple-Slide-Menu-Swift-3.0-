//
//  MenuTableViewCell.swift
//  SimpleSideMenu
//
//  Created by Максим Вакурин on 09.05.17.
//  Copyright © 2017 Vakurin Maxim. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
