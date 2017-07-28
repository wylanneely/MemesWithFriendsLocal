//
//  Game.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class Game {
    
    //MARK: - Properties
    let numberOfPlayers: Int
    
    // Equal to number of players
    let numberOfMemes: Int
    let numberOfVotes: Int
    
    //MARK: - Initializers
    
    init(numberOfPlayers: Int) {
        
        self.numberOfPlayers = numberOfPlayers
        self.numberOfMemes = numberOfPlayers
        self.numberOfVotes = numberOfPlayers
    }
}
