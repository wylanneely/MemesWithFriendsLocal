//
//  Meme.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class Meme: Equatable {
    
    // File that Stores the images
    let Images = StoredImages()
    
    
    //MARK: - Properties
    
    let image: UIImage?
    var firstText: String
    var secondText: String
    var voteCount: Int
    var memeTextColor: UIColor?
    var playerName: String?
    
    
    //MARK: - Initializers
    
    init(image: UIImage, firstText: String, secondText: String, voteCount: Int, memeTextColor: UIColor, playerName: String) {
        self.playerName = playerName
        self.image = image
        self.firstText = firstText
        self.secondText = secondText
        self.voteCount = voteCount
        self.memeTextColor = memeTextColor
        //Gets and stores an image index for the meme class / record
    }
}

//MARK: - Equatable Protocol

func ==(lhs: Meme, rhs: Meme) -> Bool {
    if lhs.firstText != rhs.firstText { return false }
    if lhs.secondText != rhs.secondText { return false }
    if lhs.image != rhs.image { return false }
    if lhs.memeTextColor != rhs.memeTextColor { return false }
    if lhs.voteCount != rhs.voteCount { return false }
    return true
}
