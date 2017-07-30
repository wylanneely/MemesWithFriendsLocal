//
//  Meme.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class Meme {
    
    // File that Stores the images
    let Images = StoredImages()
    
    
    //MARK: - Properties
    let image: UIImage?
//    let imageIndex: Int
    var firstText: String
    var secondText: String
    var voteCount: Int
    
    //MARK: -Inits
    init(image: UIImage, firstText: String, secondText: String, voteCount: Int) {
        self.image = image
        self.firstText = firstText
        self.secondText = secondText
        self.voteCount = voteCount
        //Gets and stores an image index for the meme class / record
    }
    
    
}
