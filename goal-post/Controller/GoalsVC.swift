//
//  ViewController.swift
//  goal-post
//
//  Created by Jerry on 9/27/19.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addGoadBtnPressed(_ sender: Any) {
        print("Btn was pressed")
    }
    
}

