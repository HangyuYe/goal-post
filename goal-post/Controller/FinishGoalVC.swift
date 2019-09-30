//
//  FinishGoalVC.swift
//  goal-post
//
//  Created by Jerry on 2019/9/30.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointTextfield: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindKeyboard()
        pointTextfield.delegate = self
    }

    @IBAction func createGoalBtnPressed(_ sender: Any) {
        //Pass data into Core Data Goal Model
    }
    
}
