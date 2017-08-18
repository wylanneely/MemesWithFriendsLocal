//
//  PlayerTableViewCell.swift
//  MemeMaster
//
//  Created by ALIA M NEELY on 7/27/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import CloudKit

class PlayerTableViewCell: UITableViewCell {
    
    weak var delegate: joinGameDelegate?
    
    @IBOutlet weak var playerNameLabel: UILabel!
    
    var gameRecord: CKRecord?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func joinGameButtonTapped(_ sender: Any) {
        if let gameRecord = gameRecord {
            delegate?.joinGame(gameRecord: gameRecord)
            
        }
        
    }
    
}

protocol joinGameDelegate: class {
    func joinGame(gameRecord: CKRecord)
}
