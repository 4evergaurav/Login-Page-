//
//  DashTableViewCell.swift
//  firstapp
//
//  Created by STUDENT on 4/16/24.
//

import UIKit

class DashTableViewCell: UITableViewCell {

    @IBOutlet weak var nameConstant: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
