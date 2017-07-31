//
//  MemeController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit


class MemeController{
    
    // MARK: - Properties
    static var shared = MemeController()
    var memes: [Meme] = []
    
    //create
    func createMeme(image: UIImage, firstText: String, secondText: String, voteCount: Int, memeTextColor: UIColor, playerName: String)  {
        let meme = Meme(image: image, firstText: firstText, secondText: secondText, voteCount: voteCount, memeTextColor: memeTextColor, playerName: playerName)
        memes.append(meme)
    }
    
}
