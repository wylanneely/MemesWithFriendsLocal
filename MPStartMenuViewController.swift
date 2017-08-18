//
//  StartMenuViewController.swift
//  MemeMaster
//
//  Created by Bradley GIlmore on 7/24/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class MPStartMenuViewController: UIViewController {

    @IBOutlet weak var playerNameTextField: UITextField!
    
    @IBAction func instructionButtonTapped(_ sender: Any) {
    }
    
    @IBAction func joinGameButtonTapped(_ sender: Any) {
        guard let name = playerNameTextField.text else { return }
        //Set name of the local player for pulls across the game
        MPLocalGameController.shared.localPlayerName = name
    }
    
    @IBAction func createButtonTapped(_ sender: Any) {
        guard let name = playerNameTextField.text else { return }
        //Set name of the local player for pulls across the game
        MPLocalGameController.shared.localPlayerName = name
    }

}
