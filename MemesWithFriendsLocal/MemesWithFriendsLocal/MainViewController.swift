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

        feedbackGenerator = UISelectionFeedbackGenerator()

        
        playButton.setImage(#imageLiteral(resourceName: "StartButtonHighlighted"), for: .highlighted)
        instructionsButton.setImage(#imageLiteral(resourceName: "InstructionButtonHighlighted"), for: .highlighted)
        logoImageView.alpha = 0
        
        
        
        showLogo()
    }
    
    //MARK: - Properties
    var feedbackGenerator: UISelectionFeedbackGenerator? = nil
    
    //MARK: - IBOutlets
    
    
    
    @IBOutlet weak var instructionsButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var logoImageView: UILabel!
    
    //MARK: - IBActions
    @IBAction func startButtonTapped(_ sender: UIButton) {
        feedbackGenerator?.selectionChanged()
    }
    
    @IBAction func instructionButtonTapped(_ sender: UIButton) {
        feedbackGenerator?.selectionChanged()
    }
    
    
    //MARK: - Animate Methods
    
    func showLogo() {
        
        UIView.animate(withDuration: 2, delay: 0.0, options: [.transitionCrossDissolve], animations: {
            self.logoImageView.alpha = 1
        })     }
    
}
