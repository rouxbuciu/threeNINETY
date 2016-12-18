//
//  HabitListVC.swift
//  threeNINETY
//
//  Created by roux g. buciu on 2016-12-12.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class HabitListVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuButton: UIButton!

    var testArray = ["Don't Smoke", "Practice Trombone", "Exercise"]
    
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    
    // MARK: - Button Functionality
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        
        menuButtonIsPressed(menuButton: sender, incomingViewController: self)
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "HabitDetailsVC" {
            if let destination = segue.destination as? HabitDetailsVC {
                if let item = sender as? String {
                    destination.habitTitle = item
                }
            }
        }
    }


}


extension HabitListVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitListCell", for: indexPath) as! HabitListCell
        
        cell.habitTitle.text = testArray[indexPath.row]
        cell.lastCompletionDate.text = testArray[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(red: 88.0/255.0, green: 53.0/255.0, blue: 94.0/255.0, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor(red: 100.00/255.0, green: 89.0/255.0, blue: 134.0/255.0, alpha: 1.0)
        }
        
        return cell
    }
    
}


extension HabitListVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item: String!
        item = testArray[indexPath.row]
        performSegue(withIdentifier: "HabitDetailsVC", sender: item)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
