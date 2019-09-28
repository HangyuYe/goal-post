//
//  GoalCell.swift
//  goal-post
//
//  Created by Jerry on 9/28/19.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, tpye: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = tpye.rawValue
        self.goalProgressLbl.text = String(goalProgressAmount)
    }
    
}
