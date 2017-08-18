//
//  MemeImagesCollectionViewCell.swift
//  MemeMaster
//
//  Created by Bradley GIlmore on 7/24/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class MemeImagesCollectionViewCell: UICollectionViewCell {
    
    var imageIndex: Int = 0
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    
    @IBAction func imageButtonTapped(_ sender: Any) {
        delegate?.memeImageButtonTappped(cell: self)
    }
    //Step 2
    weak var delegate: CKMemeImageSelectedDelegate?
}

//Step 1:
protocol CKMemeImageSelectedDelegate: class {
    func memeImageButtonTappped(cell: MemeImagesCollectionViewCell)
}


