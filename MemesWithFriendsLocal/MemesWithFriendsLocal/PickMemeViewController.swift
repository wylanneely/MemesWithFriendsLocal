//
//  PickMemeViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 8/2/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class PickMemeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, MemeImageSelectedDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Need this to make sure everything in view is loaded, crashes if there is no timer
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (_) in
            GameController.shared.person = GameController.shared.randomWinner()
            self.presentAlertController()
            
            // Removes person from array
            if let personIndex = CreateMemeViewController.currentPlayerArray.index(of: GameController.shared.person) {
                CreateMemeViewController.currentPlayerArray.remove(at: personIndex)
            }
        }
    }
    
    //MARK: - Properties
    var image: UIImage?
    
    //MARK: - CollectionView Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoredImages.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeImageCell", for: indexPath) as? MemeImagesCollectionViewCell else { return UICollectionViewCell()}
        cell.delegate = self
        let image = StoredImages.images[indexPath.row]
        cell.image.image = image
        return cell
    }
    
    //MARK: - Custom Methods
    
    func memeImageButtonTappped(cell: MemeImagesCollectionViewCell) {
        guard let image = cell.image.image else { NSLog("Cell Image Nil"); return }
        self.image = image
        performSegue(withIdentifier: "createMemeSegue", sender: self)
    }
    
    func presentAlertController() {
        let alert = UIAlertController(title: "\(GameController.shared.person)'s turn", message: "Please pass device to this person", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    //MARK: - Segue Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createMemeSegue" {
            if let createVC = segue.destination as? CreateMemeViewController {
                guard let image = self.image else { NSLog("image passover wasn't unwrapped properly") ; return }
                createVC.image = image
            }
        }
    }
}
