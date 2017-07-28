//
//  GameController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class GameController {
    
    static let shared = GameController()
    
    //MARK: - Properties
    
    var game: Game?
    
    //MARK: - CRUD
    
    func createGameWith(numberOfPlayers: Int) {
        
        game = Game(numberOfPlayers: numberOfPlayers)
    }
    
}
