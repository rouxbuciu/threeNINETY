//
//  HabitListCell.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-12.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class HabitListCell: UITableViewCell {

    @IBOutlet weak var habitTitle: UILabel!
    @IBOutlet weak var lastCompletionDate: UILabel!
    
    // MARK: - View life cycle
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupHabitCell(name: String, date: String) {
        
        self.habitTitle.text = name
        self.lastCompletionDate.text = date
        
    }
}
