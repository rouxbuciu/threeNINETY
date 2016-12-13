//
//  CircleButtons.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-12.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class CircleButtons: UIButton {
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButtonStyle()
    }
    
    override func awakeFromNib() {
        setupButtonStyle()
    }
    
    func setupButtonStyle() {
        self.layer.backgroundColor = UIColor(red: 39.0/255.0, green: 99.0/255.0, blue: 122.0/255.0, alpha: 1.0).cgColor
        self.layer.cornerRadius = self.layer.bounds.size.width / 2
        
    }
    
    func setHighlighted(highlighted: Bool) {
        if highlighted == true {
            highlightButton()
        } else {
            clearHighlight()
        }
    }
    
    func highlightButton() {
        self.layer.backgroundColor = UIColor(red: 17.0/255.0, green: 75.0/255.0, blue: 95.0/255.0, alpha: 1.0).cgColor
    }
    
    func clearHighlight() {
        self.layer.backgroundColor = UIColor(red: 39.0/255.0, green: 99.0/255.0, blue: 122.0/255.0, alpha: 1.0).cgColor
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
