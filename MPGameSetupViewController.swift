//
//  GameSetupViewController.swift
//  MemeMaster
//
//  Created by ALIA M NEELY on 7/27/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//
//  Note: - This view is only accessible when the user is creating a new game.

import UIKit
import CloudKit

class MPGameSetupViewController: UIViewController {

    @IBOutlet weak var numberOfPlayersTextField: UITextField!
    @IBOutlet weak var gameNameTextField: UITextField!
    
    @IBAction func startButtonTapped(_ sender: Any) {
        guard let name = gameNameTextField.text,
            let numberOfPlayes = Int(numberOfPlayersTextField.text!) else {return}
        
        MPLocalGameController.shared.createNewGame(name: name, numberOfPlayers: numberOfPlayes)
    }
    
}
