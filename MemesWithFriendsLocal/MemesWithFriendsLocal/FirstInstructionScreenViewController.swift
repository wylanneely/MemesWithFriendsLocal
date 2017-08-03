//
//  FirstInstructionScreenViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Zachary Duvall on 7/31/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class FirstInstructionScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(setUIAlphaBackToOne), name: ThirdInstructionScreenViewController.ThirdScreenWillDisappear, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(setUIAlphaBackToOne), name: SecondInstructionScreenViewController.SecondScreenWillDisappear, object: nil)
        
        goalsTitleLabel.alpha = 0
        backToHomeButton.alpha = 0
        goalOneLabel.alpha = 0
        thenLabel.alpha = 0
        goalTwoLabel.alpha = 0
        nextButton.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showAnimations(withDuration: 1.5)
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var goalsTitleLabel: UILabel!
    @IBOutlet weak var goalOneLabel: UILabel!
    @IBOutlet weak var thenLabel: UILabel!
    @IBOutlet weak var goalTwoLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backToHomeButton: UIButton!
    
    func setUIAlphaBackToOne() {
        goalsTitleLabel.alpha = 1
        goalOneLabel.alpha = 1
        thenLabel.alpha = 1
        goalTwoLabel.alpha = 1
        nextButton.alpha = 1
        backToHomeButton.alpha = 1
    }
    
    func showAnimations(withDuration: Double) {
        showTitleLabel(withDuration: withDuration)
    }
    
    func showTitleLabel(withDuration: Double) {
        UIView.animate(withDuration: withDuration, animations: {
            self.goalsTitleLabel.alpha = 1
        }) { (true) in
            self.showGoalOneLabel(withDuration: withDuration)
        }
    }
    
    func showGoalOneLabel(withDuration: Double) {
        UIView.animate(withDuration: withDuration, animations: {
            self.goalOneLabel.alpha = 1
        }) { (true) in
            self.showThenLabel(withDuration: withDuration)
        }
    }
    
    func showThenLabel(withDuration: Double) {
        UIView.animate(withDuration: withDuration, animations: {
            self.thenLabel.alpha = 1
        }) { (true) in
            self.showGoalTwoLabel(withDuration: withDuration)
        }
    }
    
    func showGoalTwoLabel(withDuration: Double) {
        UIView.animate(withDuration: withDuration, animations: {
            self.goalTwoLabel.alpha = 1
        }) { (true) in
            self.showNextButton(withDuration: withDuration)
            self.showHomeButton(withDuration: withDuration * 2)
        }
    }
    
    func showHomeButton(withDuration: Double) {
        UIView.animate(withDuration: withDuration, animations: {
            self.backToHomeButton.alpha = 1
        }) { (true) in
            // yay
        }
    }
    
    func showNextButton(withDuration: Double) {
        UIView.animate(withDuration: withDuration, delay: 0.0, options: [.transitionFlipFromBottom, .preferredFramesPerSecond60], animations: {
            self.nextButton.alpha = 1
        }, completion: nil)
    }
    
}
