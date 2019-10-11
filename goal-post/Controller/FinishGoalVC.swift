//
//  FinishGoalVC.swift
//  goal-post
//
//  Created by Jerry on 2019/9/30.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit
import CoreData

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
        NotificationCenter.default.addObserver(self, selector: #selector(bindKeyboard(_:) ), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        pointTextfield.delegate = self
    }
    
    @objc func bindKeyboard(_ notification: Notification) {
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        let startFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY: CGFloat = endingFrame.origin.y - startFrame.origin.y + self.view.safeAreaInsets.bottom
        
        UIView.animateKeyframes(withDuration: duration, delay: 0, options: UIView.KeyframeAnimationOptions(rawValue: curve), animations: {
            self.createGoalBtn.frame.origin.y += deltaY
        }, completion: nil)
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        if pointTextfield.text != nil {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    func save(completion: (_ finished: Bool) -> () ) {
        guard  let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointTextfield.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved data.")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
        
    }
}






























