//
//  ExpenseTableViewCell.swift
//  Expenses
//
//  Created by Jake Woratzeck on 1/23/19.
//  Copyright © 2019 Jake Woratzeck. All rights reserved.
//

import UIKit

class ExpenseTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
