//
//  ThirdInstructionScreenViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Zachary Duvall on 7/31/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit


extension ThirdInstructionScreenViewController {
    static let ThirdScreenWillDisappear = Notification.Name("ThirdViewWillDisapear")
}

class ThirdInstructionScreenViewController: UIViewController {

    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.post(name: ThirdInstructionScreenViewController.ThirdScreenWillDisappear, object: self)
    }


}
