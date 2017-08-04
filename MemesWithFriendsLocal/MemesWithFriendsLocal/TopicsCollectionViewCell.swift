//
//  TopicsCollectionViewCell.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 8/4/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class TopicsCollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var topicsImageView: UIImageView!
    
    
    //MARK: - IBActions
    
    @IBAction func topicButtonTapped(_ sender: Any) {
        
        guard let image = topicsImageView.image else { NSLog("Topic Image Is Nil"); return }
        switch image {
        case #imageLiteral(resourceName: "Game"):
            StoredTopics.topics = StoredTopics.videoGameTopics
            NotificationCenter.default.post(name: .Segue, object: nil)
        case #imageLiteral(resourceName: "movies"):
            StoredTopics.topics = StoredTopics.movieTopics
            NotificationCenter.default.post(name: .Segue, object: nil)
        case #imageLiteral(resourceName: "actor"):
            StoredTopics.topics = StoredTopics.actorTopics
            NotificationCenter.default.post(name: .Segue, object: nil)
        case #imageLiteral(resourceName: "Comics"):
            StoredTopics.topics = StoredTopics.comicTopics
            NotificationCenter.default.post(name: .Segue, object: nil)
        case #imageLiteral(resourceName: "Football"):
            StoredTopics.topics = StoredTopics.sportTopics
            NotificationCenter.default.post(name: .Segue, object: nil)
        case #imageLiteral(resourceName: "Question"):
            StoredTopics.topics = StoredTopics.politics
            NotificationCenter.default.post(name: .Segue, object: nil)
        default:
            return
        }
        
        
    }
    
    
}
