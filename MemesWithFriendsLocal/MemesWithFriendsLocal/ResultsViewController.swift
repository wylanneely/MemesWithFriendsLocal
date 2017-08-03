//
//  ResultsViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import GameKit

class ResultsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        calculateWinner()
        restartButton.setImage(#imageLiteral(resourceName: "RestartButtonHighlighted"), for: .highlighted)
    }
    
    //MARK: - Properties
    var feedbackGenerator: UIImpactFeedbackGenerator? = nil
    var winnerCount: Int = 0 {
        didSet {
            NSLog("Winner count: \(winnerCount)")
        }
    }
    var meme: Meme? {
        didSet{
            guard let meme = meme else { NSLog("Meme is Nil"); return }
            firstTextLabel.text = meme.firstText.uppercased()
            firstTextLabel.textColor = meme.memeTextColor
            secondTextLabel.textColor = meme.memeTextColor
            secondTextLabel.text = meme.secondText.uppercased()
            winnerImageView.image = meme.image
            votesLabel.text = "Votes: \(meme.voteCount)"
            playerLabel.text = meme.playerName
        }
    }
    var memes: [Meme] = []
    
    //MARK: - Winner
    
    func calculateWinner() {
        
        for i in MemeController.shared.memes {
            
            if i.voteCount > winnerCount {
                winnerCount = i.voteCount
            }
            
        }
        
        for i in MemeController.shared.memes {
            if i.voteCount == winnerCount {
                self.memes.append(i)
            }
        }
        
        meme = randomWinner()
    }
    
    // Random Winner
    
    func randomWinner() -> Meme {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: memes.count)
        return memes[randomNumber]
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var winnerImageView: UIImageView!
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    //MARK: - IBActions
    
    @IBAction func restartGameButtonTapped(_ sender: Any) {
        feedbackGenerator?.prepare()
        GameController.shared.game = nil
        MemeController.shared.memes = []
        feedbackGenerator?.impactOccurred()
    }
}
