//
//  DaysOfTheWeekViewController.swift
//  DaysOfTheWeekiOS17
//
//  Created by Nick Reichard on 1/23/18.
//  Copyright © 2018 Nick Reichard. All rights reserved.
//

import UIKit

class DaysOfTheWeekViewController: UIViewController {

    @IBOutlet weak var daysOfTheWeekTableView: UITableView!
    
    var daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        daysOfTheWeekTableView.dataSource = self
        daysOfTheWeekTableView.delegate = self

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

extension DaysOfTheWeekViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return daysOfTheWeek.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = daysOfTheWeek[indexPath.row]
        
        cell.textLabel?.text = day
        
        return cell
    }
    
    // When the user didSelect on a row (or tapps) we are going to se the indexPath logged into the consol - THIS IS JUST FOR US for now
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }

}






