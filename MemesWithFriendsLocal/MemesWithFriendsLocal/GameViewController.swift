//
//  GameViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import GameKit

class GameViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getNamesFromMemes()
        
        // Need this to make sure everything in view is loaded, crashes if there is no timer
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (_) in
            self.person = self.playersArray[0]
            self.presentAlertController()
            self.playersArray.remove(at: 0)
        }
    }
    
    //MARK: - Properties
    
    var playersArray: [String] = []
    var person: String = ""
    
    //MARK: - UICollection View DataSource / Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MemeController.shared.memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeVoteCell", for: indexPath) as? MemeVoteCollectionViewCell else { return UICollectionViewCell()}
        
        let meme = MemeController.shared.memes[indexPath.row]
        
        cell.topTextLabel.text = meme.firstText.uppercased()
        cell.bottomTextLabel.text = meme.secondText.uppercased()
        cell.memeImage.image = meme.image
        cell.topTextLabel.textColor = meme.memeTextColor
        cell.bottomTextLabel.textColor = meme.memeTextColor
    
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let meme = MemeController.shared.memes[indexPath.row]
        meme.voteCount += 1
        GameController.shared.game?.numberOfVotes -= 1
        
        if GameController.shared.game?.numberOfVotes == 0 {
            NSLog("Numbers of votes 0")
            performSegue(withIdentifier: "resultsSegue", sender: self)
        } else {
            self.person = randomWinner()
            presentAlertController()
            clearPerson()
        }
    }
    
    //MARK: - Generic Alert Controller
    
    func presentAlertController() {
        let alert = UIAlertController(title: "\(self.person)'s turn to vote", message: "Please pass device to this person", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    //MARK: - Randomizer
    
    func clearPerson() {
        if let personIndex = playersArray.index(of: self.person) {
            playersArray.remove(at: personIndex)
        }
        
        self.person = ""
    }
    
    func randomWinner() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: self.playersArray.count)
        return self.playersArray[randomNumber]
    }
    
    func getNamesFromMemes() {
        for i in MemeController.shared.memes {
            guard let player = i.playerName else { NSLog("PlayerName was nil"); return }
            playersArray.append(player)
        }
    }
    
    
}








