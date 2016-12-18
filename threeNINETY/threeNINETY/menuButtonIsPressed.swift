//
//  menuButtonIsPressed.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-12.
//  Copyright © 2016 ACME Labs. All rights reserved.
//


import Foundation

// creating menuButton rotation behaviour
func menuButtonIsPressed(menuButton: UIButton, incomingViewController vc: UIViewController) {
    
    if MENU_IS_OPEN {
        if vc.revealViewController() != nil {
            vc.revealViewController().setFrontViewPosition(.left, animated: true)
        }
        
        menuButton.transform = menuButton.transform.rotated(by: CGFloat(M_PI_2))
        
        MENU_IS_OPEN = false
        
    } else {
        if vc.revealViewController() != nil {
            vc.revealViewController().setFrontViewPosition(.right, animated: true)
            vc.revealViewController().rearViewRevealWidth = 160
        }
        
        menuButton.transform = menuButton.transform.rotated(by: CGFloat(M_PI_2))
        
        
        MENU_IS_OPEN = true
    }
}
