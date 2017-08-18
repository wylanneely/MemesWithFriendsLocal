//
//  SecondInstructionScreenViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Zachary Duvall on 7/31/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

extension SecondInstructionScreenViewController {
    static let SecondScreenWillDisappear = Notification.Name("SecondViewWillDisapear")
}

class SecondInstructionScreenViewController: UIViewController {
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.post(name: SecondInstructionScreenViewController.SecondScreenWillDisappear, object: self)
    }
}
