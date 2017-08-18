//
//  Player.swift
//  MemeMaster
//
//  Created by WYLAN on 7/27/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//


//  The Player object is in charge of representing a player signed into the game.
// Id has the name, and a uuid of the name to find it in cloud kit


import Foundation
import CloudKit

class CKPlayer {
    
    var displayName: String
    var recordUUId: UUID = UUID()
    var ckRecordID: CKRecordID {
        return CKRecordID(recordName: self.recordUUId.uuidString)
    }
    let gameReference: CKReference
    
    var cloudKitRecord: CKRecord {
        let record = CKRecord(recordType: CKPlayer.cKRecordTypeKey, recordID: self.ckRecordID)
        record.setValue(displayName, forKey: kName )
        record.setValue(recordUUId.uuidString, forKey: kRecordIdString)
        record.setValue(gameReference, forKey: kGameReference)
        return record
    }
    
    // Note: - Player objects are created After the user has access to the gameReference record ID 
    init(name: String = "NoName", gameRefrence: CKRecord){
        //Add arc 4 random number to end of name so when 2 people forget, players still can differentiate
        self.displayName = name
        self.gameReference = CKReference(record: gameRefrence, action: .none)
    }
    
    init?(cloudkitRecord: CKRecord) {
        guard let name = cloudkitRecord[kName] as? String,
            let recordIDString = cloudkitRecord[kRecordIdString] as? String,
            let gameReference = cloudkitRecord[kGameReference] as? CKReference else {return nil}
        guard let recordUUId = UUID(uuidString: recordIDString) else {return nil}
        self.displayName = name
        self.recordUUId = recordUUId
        self.gameReference = gameReference
    }
    
    // Keys
    static let cKRecordTypeKey = "Player"
    private let kName = "name"
    private let kGameReference = "gameReference"
    private let kRecordIdString = "recordIdString"
    
}
