//
//  HabitTrackerVC.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-12.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class HabitTrackerVC: UIViewController {
    
    @IBOutlet weak var menuButton: UIButton!
    
    var menuOpen = false

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        
        if menuOpen {
            if self.revealViewController() != nil {
                self.revealViewController().setFrontViewPosition(.left, animated: true)
            }
            
            self.menuButton.transform = self.menuButton.transform.rotated(by: CGFloat(M_PI_2))
            
            menuOpen = false
            
        } else {
            if self.revealViewController() != nil {
                self.revealViewController().setFrontViewPosition(.right, animated: true)
                self.revealViewController().rearViewRevealWidth = 160
            }
            
            self.menuButton.transform = self.menuButton.transform.rotated(by: CGFloat(M_PI_2))

            
            menuOpen = true
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
