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
    }

    var image: UIImage?
    
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
    
    func memeImageButtonTappped(cell: MemeImagesCollectionViewCell) {
        guard let image = cell.image.image else { NSLog("Cell Image Nil"); return }
        self.image = image
        performSegue(withIdentifier: "createMemeSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createMemeSegue" {
            if let createVC = segue.destination as? CreateMemeViewController {
                guard let image = self.image else { NSLog("image passover wasn't unwrapped properly") ; return }
                createVC.image = image
            }
        }
    }

}
