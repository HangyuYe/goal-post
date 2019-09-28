//
//  CreateGoalVC.swift
//  goal-post
//
//  Created by Jerry on 2019/9/28.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    

}
