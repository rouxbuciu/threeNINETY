//
//  CalendarDayButtons.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-16.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class CalendarDayButtons: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override func awakeFromNib() {
    }

    func setupButtonStyle(status: String) {
        
        switch status {
        case "complete":
            self.layer.backgroundColor = UIColor(red: 142.0/255.0, green: 208.0/255.0, blue: 129.0/255.0, alpha: 1.0).cgColor
            self.layer.cornerRadius = self.layer.bounds.size.width / 2
        case "incomplete":
            self.layer.backgroundColor = UIColor(red: 192.0/255.0, green: 41.0/255.0, blue: 66.0/255.0, alpha: 1.0).cgColor
            self.layer.cornerRadius = self.layer.bounds.size.width / 2
        case "skipped":
            self.layer.backgroundColor = UIColor(red: 93.0/255.0, green: 183.0/255.0, blue: 222.0/255.0, alpha: 1.0).cgColor
            self.layer.cornerRadius = self.layer.bounds.size.width / 2
        default:
            self.layer.backgroundColor = UIColor.clear.cgColor
            self.layer.cornerRadius = 0
        }
    }

}
