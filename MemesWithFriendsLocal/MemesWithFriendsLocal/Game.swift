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
    var currentPlayers: [String]?
    
    // Equal to number of players
    var numberOfMemes: Int
    var numberOfVotes: Int
    var topic: String = ""
    
    //MARK: - Initializers
    
    init(numberOfPlayers: Int, topic: String) {
        
        self.numberOfPlayers = numberOfPlayers
        self.numberOfMemes = numberOfPlayers
        self.numberOfVotes = numberOfPlayers
        self.topic = topic
    }
}
