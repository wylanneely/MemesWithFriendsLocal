//
//  MainViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playButton.setImage(#imageLiteral(resourceName: "StartButtonHighlighted"), for: .highlighted)
        logoImageView.alpha = 0
        
        showLogo()
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var playButton: AppButton!
    @IBOutlet weak var instructionsButton: AppButton!
    @IBOutlet weak var logoImageView: UILabel!
    
    //MARK: - Animate Methods
    
    func showLogo() {
        
        UIView.animate(withDuration: 2, delay: 0.0, options: [.transitionCrossDissolve], animations: {
            self.logoImageView.alpha = 1
        })     }
    
}
