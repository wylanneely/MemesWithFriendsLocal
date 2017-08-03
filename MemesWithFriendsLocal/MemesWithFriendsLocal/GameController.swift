//
//  GameController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation
import GameKit

class GameController {
    
    //MARK: - Properties
    
    static let shared = GameController()
    var game: Game?
    
    var person: String = ""
    var currentPlayerArray: [String] = []
    
    //MARK: - CRUD
    
    func createGameWith(numberOfPlayers: Int, topic: String) {
        
        game = Game(numberOfPlayers: numberOfPlayers, topic: topic)
    }
    
    //MARK: - Randomizer
    
    func randomWinner() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: CreateMemeViewController.currentPlayerArray.count)
        return CreateMemeViewController.currentPlayerArray[randomNumber]
    }
    
}
