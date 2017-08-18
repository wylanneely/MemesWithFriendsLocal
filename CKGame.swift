//
//  Game.swift
//  MemeMaster
//
//  Created by ALIA M NEELY on 7/27/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.

//  Note: - The Game object does not directly reference the memes in the cloud


import Foundation
import CloudKit

class CKGame {
    
    //MARK: - Properties
    let name: String
    var numberOfPlayers: Int = 2
    let creatorUUIDS: String
    var isGameActive: Bool = false
    
    // locally stored, not stored on cloud
    var players: [CKPlayer] = []
    
    // cloudKit Properties
    let gameRecordUUID: UUID
    var ckGameRecordID: CKRecordID {
        let ckRecordID = CKRecordID(recordName: self.gameRecordUUID.uuidString)
        return ckRecordID
    }
    var cloudKidRecord: CKRecord {
        let record = CKRecord(recordType: CKGame.cKRecordTypeKey, recordID: ckGameRecordID)
        record.setValue(name, forKey: kName)
        record.setValue(creatorUUIDS, forKey: kCreatorName)
        record.setValue(numberOfPlayers, forKey: kNumberOFPlayers)
        record.setValue(gameRecordUUID.uuidString, forKey: kGameIDString)
        record.setValue(isGameActive, forKey: kGameActive)
        return record
    }
    
    //MARK: - Inits
    init?(CKRecord: CKRecord) {
        guard let gameIdString = CKRecord[kGameIDString] as? String,
            let gameName = CKRecord[kName] as? String,
            let creatorName = CKRecord[kCreatorName] as? String,
            let numberOfPlayers = CKRecord[kNumberOFPlayers] as? Int,
        let gameActive = CKRecord[kGameActive] as? Bool else { return nil }
        guard let gameUUID = UUID(uuidString: gameIdString) else {return nil}
        
        self.creatorUUIDS = creatorName
        self.gameRecordUUID = gameUUID
        self.name = gameName
        self.numberOfPlayers = numberOfPlayers
    }
    
    init(name: String, numberOfPlayers: Int, creator: String) {
        //this uuid is to set the record id
        self.gameRecordUUID = UUID()
        self.name = name
        self.numberOfPlayers = numberOfPlayers
        self.creator = creator
    }

    //MARK: - Keys
    static let cKRecordTypeKey = "Game"
    private let kName = "gameName"
    private let kCreatorName = "creatorName"
    private let kNumberOFPlayers = "numberOfPlayers"
    private let kGameIDString = "gameIDString"
    private let kGameActive = "isGameActive"
    
}

