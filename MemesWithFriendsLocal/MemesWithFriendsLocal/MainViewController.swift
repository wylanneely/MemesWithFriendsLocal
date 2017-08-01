//
//  MainViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var playButton: AppButton!
    @IBOutlet weak var instructionsButton: AppButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImageView.alpha = 0
        playButton.alpha = 0
        instructionsButton.alpha = 0
        showLogo()
    }
    
    
    //MARK: - Methods
    func showLogo() {
        
        UIView.animate(withDuration: 2, delay: 0.0, options: [.transitionCrossDissolve], animations: {
            self.logoImageView.alpha = 1
        }) { (true) in
            self.showPlayButton()
        }
    }
    
    func showPlayButton() {
        UIView.animate(withDuration: 1, delay: 0.0, options: .transitionCrossDissolve, animations: { 
            self.playButton.alpha = 1
        }) { (true) in
            self.showInstructionsButton()
        }
    }
    
    func showInstructionsButton() {
        UIView.animate(withDuration: 1, delay: 0.0, options: .transitionCrossDissolve, animations: { 
            self.instructionsButton.alpha = 1
        }, completion: nil)
    }
    
}
