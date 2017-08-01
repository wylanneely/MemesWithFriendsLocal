//
//  GameController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class GameController {
    
    //MARK: - Properties
    static let shared = GameController()
    var game: Game?
    
    //MARK: - CRUD
    
    func createGameWith(numberOfPlayers: Int, topic: String) {
        
        game = Game(numberOfPlayers: numberOfPlayers, topic: topic)
    }
    
}
