//
//  TopicsViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 8/4/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class TopicsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topicsCollectionView.delegate = self
        self.topicsCollectionView.dataSource = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(segue), name: .Segue, object: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoredTopics.names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topicCell", for: indexPath) as? TopicsCollectionViewCell else { NSLog("Cell Wrong Type"); return UICollectionViewCell() }
        
        cell.topicsImageView.image = StoredTopics.images[indexPath.row]
        
        return cell
    }
    
    @objc func segue() {
        performSegue(withIdentifier: "setupSegue", sender: self)
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var topicsCollectionView: UICollectionView!
}

