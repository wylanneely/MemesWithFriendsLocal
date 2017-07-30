//
//  GameViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - UICollection View DataSource / Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MemeController.shared.memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeVoteCell", for: indexPath) as? MemeVoteCollectionViewCell else { return UICollectionViewCell()}
        
        let meme = MemeController.shared.memes[indexPath.row]
        
        cell.topTextLabel.text = meme.firstText
        cell.bottomTextLabel.text = meme.secondText
        cell.memeImage.image = meme.image
        
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
            let alert = UIAlertController(title: "Next Person", message: "Please pass device to the next person", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
