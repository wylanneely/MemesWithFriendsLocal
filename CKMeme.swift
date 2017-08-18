//
//  Meme.swift
//  MemeMaster
//
//  Created by Bradley GIlmore on 7/24/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.

// Meme object is a Representation of a meme, it uses stored

import UIKit
import CloudKit

class CKMeme: Equatable {
    
    // File that Stores the images
    let storedImages = MPStoredImages()
    
    //MARK: - Properties
    var creator: String
    let image: UIImage?
    let imageIndex: Int
    var firstText: String
    var secondText: String
    var textColor: UIColor
    var textColorData: Data {
        return NSKeyedArchiver.archivedData(withRootObject: textColor)
    }
    var combinedText: String {
        return "\(self.firstText)" + "\(self.secondText)" + "\(self.creator)"
    }
    //cloudkit
    let gameReference: CKReference
    var recordId: UUID = UUID()
    var cloudKitRecord: CKRecord {
        let recordID = CKRecordID(recordName: recordId.uuidString)
        let record = CKRecord(recordType: CKMeme.cKRecordTypeKey, recordID: recordID)
        record.setValue(imageIndex, forKey: kImageIndex)
        record.setValue(firstText, forKey: kFirstText)
        record.setValue(secondText, forKey: kSecondText)
        record.setValue(recordId.uuidString, forKey: krecordIDString)
        record.setValue(gameReference, forKey: kGameReference)
        record.setValue(textColorData, forKey: kTextColor)
        record.setValue(creator, forKey: kCreator)
        return record
    }
    
    //MARK: - Inits
    init(image: UIImage, firstText: String, secondText: String, gameReference: CKRecord, textColor: UIColor, creator: String = "Creator" ) {
        self.gameReference = CKReference(record: gameReference, action: .none)
        self.image = image
        self.firstText = firstText
        self.secondText = secondText
        //Gets and stores an image index for the meme class/record
        self.imageIndex = storedImages.getIndexFrom(image: image)
        self.textColor = textColor
        self.creator = creator
    }
    
    init(){
        let record = CKRecord(recordType: "Meme")
        self.gameReference = CKReference(record: record, action: .none)
        self.image = UIImage()
        self.firstText = ""
        self.secondText = ""
        //Gets and stores an image index for the meme class/record
        self.imageIndex = 1
        self.creator = ""
        self.textColor = UIColor()
        
    }
    
    init?(cloudKitRecord: CKRecord){
        guard let imageIndex = cloudKitRecord[kImageIndex] as? Int,
            let firstText = cloudKitRecord[kFirstText] as? String,
            let secondText = cloudKitRecord[kSecondText] as? String,
            let recordIDString = cloudKitRecord[krecordIDString] as? String,
            let gameReference = cloudKitRecord[kGameReference] as? CKReference,
            let creator = cloudKitRecord[kCreator] as? String,
            let textColorData = cloudKitRecord[kTextColor] as? Data else { return nil }
        guard let recordID = UUID(uuidString: recordIDString) else { return nil }
        guard let textColor = NSKeyedUnarchiver.unarchiveObject(with: textColorData) as? UIColor else {return nil}
        
        self.textColor = textColor
        self.creator = creator
        self.gameReference = gameReference
        self.imageIndex = imageIndex
        self.firstText = firstText
        self.secondText = secondText
        self.recordId = recordID
        self.image = storedImages.getImageFrom(index: imageIndex)
    }
    
    //MARK: - CloudKit Keys
    static let cKRecordTypeKey = "Meme"
    private let kImageIndex = "ImageIndex"
    private let kFirstText = "firstText"
    private let kSecondText = "secondText"
    private let krecordIDString = "recordIDString"
    private let kGameReference = "gameReference"
    private let kCreator = "creator"
    private let kTextColor = "textColor"
    
}

func ==(lhs: CKMeme, rhs: CKMeme) -> Bool {
    if lhs.firstText != rhs.firstText { return false }
    if lhs.secondText != rhs.secondText { return false }
    if lhs.image != rhs.image { return false }
    return true
}










