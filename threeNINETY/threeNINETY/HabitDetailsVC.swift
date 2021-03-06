//
//  HabitDetailsVC.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-12.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class HabitDetailsVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var habitTitleLabel: UILabel!
    
    @IBOutlet weak var backButton: CircleButtons!
    @IBOutlet weak var editEntryButton: CircleButtons!
    @IBOutlet weak var doneEditingHabitButton: CircleButtons!
    @IBOutlet weak var deleteHabitButton: CircleButtonTrash!
    
    
    // MARK: - Variables
    var habitTitle: String!
    var monthStartingDay: String!
    var buttonArray = [CalendarDayButtons]()
    var habitIsInEditingMode = false
    
    
    // TESTING ARRAYS & VARIABLES
    var testArr = [String]()
    var daysInMonth = Int()
    
    

    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generateTestData()
        assignActiveLowerButtons()
        stylizeCalendar(date: monthStartingDay)
        habitTitleLabel.text = habitTitle
    
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func stylizeCalendar(date: String) {
        var startIndex = 0
        let totalButtons = 136
        var buttonLabelText = 1
        
        switch date {
        case "Sunday":
            startIndex = 100
        case "Monday":
            startIndex = 101
        case "Tuesday":
            startIndex = 102
        case "Wednesday":
            startIndex = 103
        case "Thursday":
            startIndex = 104
        case "Friday":
            startIndex = 105
        case "Saturday":
            startIndex = 106
        default:
            startIndex = 100
        }
        
        daysInMonth += startIndex-1
        
        for x in 100...totalButtons {
            
            if x >= startIndex && x <= daysInMonth {
                let button = self.view.viewWithTag(x) as! CalendarDayButtons
                
                if (x - 100) >= testArr.count {
                    button.backgroundColor = UIColor.clear
                    //button.titleLabel?.textColor = UIColor.lightGray
                    button.setTitle("\(buttonLabelText)", for: .normal)
                    
                } else {
                    button.setupButtonStyle(status: testArr[buttonLabelText-1])
                    button.setTitle("\(buttonLabelText)", for: .normal)
                    
                }
                
                buttonLabelText += 1
                createActiveButtonArray(button: button)
                
            } else {
                let button = self.view.viewWithTag(x) as! CalendarDayButtons
                button.setTitle("  ", for: .normal)
                button.backgroundColor = UIColor.clear
            }
        }
    }
    
    func createActiveButtonArray(button: CalendarDayButtons) {
        buttonArray.append(button)
    }
    
    // MARK: - Button functions
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editButtonPressed(_ sender: CircleButtons) {
        
        habitIsInEditingMode = true
        assignActiveLowerButtons()
    }
    
    @IBAction func doneEditingHabitButtonPressed(_ sender: CircleButtons) {
        
        habitIsInEditingMode = false
        assignActiveLowerButtons()
    }
    
    @IBAction func deleteHabitButtonPressed(_ sender: CircleButtonTrash) {
        
    }
    
    
    func assignActiveLowerButtons() {
        
        if habitIsInEditingMode {
            doneEditingHabitButton.isHidden = false
            deleteHabitButton.isHidden = false
            editEntryButton.isHidden = true
            backButton.isHidden = true
            
        } else {
            doneEditingHabitButton.isHidden = true
            deleteHabitButton.isHidden = true
            editEntryButton.isHidden = false
            backButton.isHidden = false
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
    
    
    // MARK: - Pre-CoreData Testing Functions
    
    func generateTestData() {
        
        //Generate Task completion
        let taskArray = ["complete", "incomplete", "skipped"]
        let taskArraySize = Int(arc4random_uniform(UInt32(27))) + 4
        
        for _ in 0...taskArraySize-1 {
            let arrayRandomIndex = Int(arc4random_uniform(UInt32(taskArray.count)))
            testArr.append(taskArray[arrayRandomIndex])
        }
        
        //Generate starting month day
        let daysOfTheWeek = ["Suday", "Monday", "Tuesday", "Wednesday", "Thursday",
                             "Friday", "Saturday"]
        monthStartingDay = daysOfTheWeek[Int(arc4random_uniform(UInt32(
            daysOfTheWeek.count)))]
        
        
        //Generate days of the month
        daysInMonth = Int(arc4random_uniform(UInt32(4))) + 27
    }

}
