//
//  WeeklyViewController.swift
//  PrioritySchedular
//
//  Created by Haru on 2020/11/16.
//

import UIKit

class WeeklyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableMon: UITableView!
    
    var taskList: [TaskVO] = [TaskVO]()
    var test1 = TaskVO(title: "10:30 meeting")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskList.append(test1)
        tableMon.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = taskList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        cell.textLabel?.text = task.title
        return cell
    }
}
