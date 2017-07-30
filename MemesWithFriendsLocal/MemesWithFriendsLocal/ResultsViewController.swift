//
//  ResultsViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        calculateWinner()
    }
    
    var winnerCount: Int = 0
    var meme: Meme?
    
    //MARK: - Winner
    
    func calculateWinner() { //TODO: - This will work as long as there are no ties, How to fix so ties are represented fairly? perhaps just do arc4random?
        
        for i in MemeController.shared.memes {
            
            if i.voteCount > winnerCount {
                winnerCount = i.voteCount
                meme = i
            }
        }
        firstTextLabel.text = meme?.firstText
        secondTextLabel.text = meme?.secondText
        winnerImageView.image = meme?.image
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var winnerImageView: UIImageView!
    
}
