//
//  ViewController.swift
//  ExpandingTableViewCell
//
//  Created by Mehul  Singhal  on 21/06/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var selectedIndex = -1
    var dataArray = ["Mehul Singhal", "Keshika Tank", "Naman Khurpia"]
    var LastNames = ["Too Good", "Need Scolding","Moderate"]
    var status = ["Present", "Absent", "Mark attendance"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.firstLabelView?.text = dataArray[indexPath.row]
        cell.secondLabelView?.text = LastNames[indexPath.row]
        cell.attendanceButton.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)


        cell.attendanceButton.titleLabel?.text = status[indexPath.row]
        return cell
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row){
        return 100
        }else{
        return 40
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(selectedIndex == indexPath.row)
        {
            selectedIndex = -1
        }
        else
        {
            selectedIndex = indexPath.row
        }
        self.tableView.beginUpdates()
        self.tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        self.tableView.endUpdates()
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

