//
//  CustomTableViewCell.swift
//  ExpandingTableViewCell
//
//  Created by Mehul  Singhal  on 23/06/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var firstLabelView: UILabel!
    
    
    @IBOutlet weak var secondViewq: UIView!
    
    @IBOutlet weak var secondLabelView: UILabel!
    
    
    @IBOutlet weak var secondHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var attendanceButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    var showDetails = false {
    
        didSet{
            secondHeightConstraint.priority = showDetails ? 250 : 999
        }
    }
    
    @IBAction func attendanceTaker(_ sender: Any) {
        
        
        
        
    }
    

}
