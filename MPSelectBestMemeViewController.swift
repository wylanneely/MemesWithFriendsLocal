//
//  QueuedUserMemesViewController.swift
//  MemeMaster
//
//  Created by Bradley GIlmore on 7/24/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import UserNotifications
import CloudKit

class MPSelectBestMemeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let game = MPLocalGameController.shared.game else {return}
        MPLocalGameController.shared.fetchMemesIn(game: game) {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    
    func reloadButton() {
        self.collectionView.reloadData()
    }

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func refreshButton(_ sender: Any) {
        guard let game = MPLocalGameController.shared.game else {return}
        MPLocalGameController.shared.fetchMemesIn(game: game) {
            DispatchQueue.main.async {
                  self.collectionView.reloadData()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MPLocalGameController.shared.memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeCell", for: indexPath) as? MemeCollectionViewCell else { return UICollectionViewCell()}
        let meme = MPLocalGameController.shared.memes[indexPath.row]
        cell.memeImageView.image = meme.image
        cell.firstTestLabel.text = meme.firstText
        cell.secondTextLabel.text = meme.secondText
        cell.firstTestLabel.textColor = meme.textColor
        cell.secondTextLabel.textColor = meme.textColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let meme = MPLocalGameController.shared.memes[indexPath.row]
        guard let memeImage = meme.image else {return}
        guard let game = MPLocalGameController.shared.game else {return}
        MPLocalGameController.shared.voteBestMeme(gameRecord: game.cloudKidRecord, image: memeImage, firstText: meme.firstText, secondText: meme.secondText, textColor: meme.textColor, creator: meme.creator)
        performSegue(withIdentifier: "toResults", sender: self)
        MPLocalGameController.shared.fetchBestMemesIn(game: game) {}
    }
    
    
}
