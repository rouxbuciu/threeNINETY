//
//  CircleButtonTrash.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-18.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class CircleButtonTrash: UIButton {
    
    
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
        self.layer.backgroundColor = UIColor(red: 192.0/255.0, green: 41.0/255.0, blue: 66.0/255.0, alpha: 1.0).cgColor
        self.layer.cornerRadius = self.layer.bounds.size.width / 2
        
    }
}
