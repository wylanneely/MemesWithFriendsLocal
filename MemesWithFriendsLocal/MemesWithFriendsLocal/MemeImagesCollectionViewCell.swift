//
//  MemeImagesCollectionViewCell.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class MemeImagesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBAction func imageButtonTapped(_ sender: UIButton) {
        delegate?.memeImageButtonTappped(cell: self)
    }

    
    weak var delegate: MemeImageSelectedDelegate?
    
}

protocol MemeImageSelectedDelegate: class {
    func memeImageButtonTappped(cell: MemeImagesCollectionViewCell)
}
