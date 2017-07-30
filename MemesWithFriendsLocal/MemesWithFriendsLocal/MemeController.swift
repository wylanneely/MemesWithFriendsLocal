//
//  MemeController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit


class MemeController{
    
    static var shared = MemeController()

    var memes: [Meme] = []
    
    //create
    func createMeme(image: UIImage, firstText: String, secondText: String, voteCount: Int)  {
        let meme = Meme(image: image, firstText: firstText, secondText: secondText, voteCount: voteCount)
        memes.append(meme)
    }
    

    

}
