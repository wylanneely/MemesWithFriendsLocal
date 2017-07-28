//
//  SetupViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var numberOfPlayersTextField: UITextField!
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToCreateMeme" {
            
            if let createMemeVC = segue.destination as? CreateMemeViewController {
                guard let numberAsString = numberOfPlayersTextField.text else { NSLog("Text is nil"); return }
                guard let number = Int(numberAsString) else { NSLog("NumberAsString is nil"); return }
                GameController.shared.createGameWith(numberOfPlayers: number)
            }
        }
    }
}
