//
//  StoredImages.swift
//  MemeMaster
//
//  Created by Bradley GIlmore on 7/24/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

struct MPStoredImages {

    //MARK: - Indexes
    /*
     0 = aintNobodyGot
     1 = arthurFist
     2 = baby
     3 = backInMyDay
     4 = batmanSlap
     5 = buddyChrist
     6 = cantJust
     7 = chubbyGirl
     8 = conspiracy
     9 = daveChappele
     10 = djPauly
     11 = duckFace
     12 = evilRaccon
     13 = firstDay
     14 = frogMeme
     15 = gollum
     16 = goodFellas
     17 = goodGuy
     18 = gradma
     19 = imaginationSpongebob
     20 = impopssibru
     21 = kevinHart
     22 = lilWayne
     23 = lookAtMe
     24 = Maury
     25 = mjPopcorn
     26 = mrKrabs
     27 = noICant
     28 = noneOfMyBusiness
     29 = noPatrick
     30 = notSure
     31 = omgCat
     32 = pushItSomewhere
     33 = realMVP
     34 = satisfiedSeal
     35 = sayThatAgain
     36 = secondTerm
     37 = soYourTellingMe
     38 = spongbobHaveYOu
     39 = suddenClarity
     40 = taken
     41 = tellMe
     42 = toyStory
     43 = trollFace
     44 = whoObama
     45 = willFeral
     46 = willyWonka
     47 = winterIsComing
     48 = wolf
     49 = wolfOfWall
     */
    
    static let images = [
        #imageLiteral(resourceName: "aintNobodyGot"),
        #imageLiteral(resourceName: "arthurFist"),
        #imageLiteral(resourceName: "baby"),
        #imageLiteral(resourceName: "backInMyDay"),
        #imageLiteral(resourceName: "batmanSlap"),
        #imageLiteral(resourceName: "buddyChrist"),
        #imageLiteral(resourceName: "cantJust"),
        #imageLiteral(resourceName: "chubbyGirl"),
        #imageLiteral(resourceName: "conspiracy"),
        #imageLiteral(resourceName: "daveChappele"),
        #imageLiteral(resourceName: "djPauly"),
        #imageLiteral(resourceName: "duckFace"),
        #imageLiteral(resourceName: "evilRaccon"),
        #imageLiteral(resourceName: "firstDay"),
        #imageLiteral(resourceName: "frogMeme"),
        #imageLiteral(resourceName: "gollum"),
        #imageLiteral(resourceName: "goodFellas"),
        #imageLiteral(resourceName: "goodGuy"),
        #imageLiteral(resourceName: "grandma"),
        #imageLiteral(resourceName: "imaginationSpongebob"),
        #imageLiteral(resourceName: "impossibru"),
        #imageLiteral(resourceName: "kevinHart"),
        #imageLiteral(resourceName: "lilWayne"),
        #imageLiteral(resourceName: "lookAtMe"),
        #imageLiteral(resourceName: "Maury"),
        #imageLiteral(resourceName: "mjPopcorn"),
        #imageLiteral(resourceName: "MrKrabs"),
        #imageLiteral(resourceName: "noICant"),
        #imageLiteral(resourceName: "noneOfMyBusiness"),
        #imageLiteral(resourceName: "noPatrick"),
        #imageLiteral(resourceName: "notSure"),
        #imageLiteral(resourceName: "omgCat"),
        #imageLiteral(resourceName: "pushItSomewhere"),
        #imageLiteral(resourceName: "realMVP"),
        #imageLiteral(resourceName: "satisfiedSeal"),
        #imageLiteral(resourceName: "sayThatAgain"),
        #imageLiteral(resourceName: "secondTerm"),
        #imageLiteral(resourceName: "soYourTellingMe"),
        #imageLiteral(resourceName: "spongebobHaveYOu"),
        #imageLiteral(resourceName: "suddenClarity"),
        #imageLiteral(resourceName: "taken"),
        #imageLiteral(resourceName: "tellMe"),
        #imageLiteral(resourceName: "toyStory"),
        #imageLiteral(resourceName: "trollFace"),
        #imageLiteral(resourceName: "whoObama"),
        #imageLiteral(resourceName: "willFeral"),
        #imageLiteral(resourceName: "willyWonka"),
        #imageLiteral(resourceName: "winterIsComing"),
        #imageLiteral(resourceName: "wolf"),
        #imageLiteral(resourceName: "wolfOfWall")
    ]
    
    func getImageFrom(index: Int)-> UIImage {
        switch index {
        case 0:
            return #imageLiteral(resourceName: "aintNobodyGot")
        case 1:
            return  #imageLiteral(resourceName: "arthurFist")
        case 2:
            return   #imageLiteral(resourceName: "baby")
        case 3:
            return  #imageLiteral(resourceName: "backInMyDay")
        case 4:
            return #imageLiteral(resourceName: "batmanSlap")
        case 5:
            return #imageLiteral(resourceName: "buddyChrist")
        case 6:
            return   #imageLiteral(resourceName: "cantJust")
        case 7:
            return   #imageLiteral(resourceName: "chubbyGirl")
        case 8:
            return    #imageLiteral(resourceName: "conspiracy")
        case 9:
            return    #imageLiteral(resourceName: "daveChappele")
        case 10:
            return    #imageLiteral(resourceName: "djPauly")
        case 11:
            return    #imageLiteral(resourceName: "duckFace")
        case 12:
            return   #imageLiteral(resourceName: "evilRaccon")
        case 13:
            return   #imageLiteral(resourceName: "firstDay")
        case 14:
            return   #imageLiteral(resourceName: "frogMeme")
        case 15:
            return   #imageLiteral(resourceName: "gollum")
        case 16:
            return  #imageLiteral(resourceName: "goodFellas")
        case 17:
            return   #imageLiteral(resourceName: "goodGuy")
        case 18:
            return    #imageLiteral(resourceName: "grandma")
        case 19:
            return     #imageLiteral(resourceName: "imaginationSpongebob")
        case 20:
            return    #imageLiteral(resourceName: "impossibru")
        case 21:
            return    #imageLiteral(resourceName: "kevinHart")
        case 22:
            return   #imageLiteral(resourceName: "lilWayne")
        case 23:
            return  #imageLiteral(resourceName: "lookAtMe")
        case 24:
            return  #imageLiteral(resourceName: "Maury")
        case 25:
            return    #imageLiteral(resourceName: "mjPopcorn")
        case 26:
            return   #imageLiteral(resourceName: "MrKrabs")
        case 27:
            return    #imageLiteral(resourceName: "noICant")
        case 28:
            return     #imageLiteral(resourceName: "noneOfMyBusiness")
        case 29:
            return    #imageLiteral(resourceName: "noPatrick")
        case 30:
            return    #imageLiteral(resourceName: "notSure")
        case 31:
            return    #imageLiteral(resourceName: "omgCat")
        case 32:
            return     #imageLiteral(resourceName: "pushItSomewhere")
        case 33:
            return    #imageLiteral(resourceName: "realMVP")
        case 34:
            return     #imageLiteral(resourceName: "satisfiedSeal")
        case 35:
            return      #imageLiteral(resourceName: "sayThatAgain")
        case 36:
            return     #imageLiteral(resourceName: "secondTerm")
        case 37:
            return     #imageLiteral(resourceName: "soYourTellingMe")
        case 38:
            return    #imageLiteral(resourceName: "spongebobHaveYOu")
        case 39:
            return    #imageLiteral(resourceName: "suddenClarity")
        case 40:
            return    #imageLiteral(resourceName: "taken")
        case 41:
            return    #imageLiteral(resourceName: "tellMe")
        case 42:
            return    #imageLiteral(resourceName: "toyStory")
        case 43:
            return     #imageLiteral(resourceName: "trollFace")
        case 44:
            return     #imageLiteral(resourceName: "whoObama")
        case 45:
            return    #imageLiteral(resourceName: "willFeral")
        case 46:
            return    #imageLiteral(resourceName: "willyWonka")
        case 47:
            return    #imageLiteral(resourceName: "winterIsComing")
        case 48:
            return    #imageLiteral(resourceName: "wolf")
        case 49:
            return   #imageLiteral(resourceName: "wolfOfWall")
        default:
            return #imageLiteral(resourceName: "wolfOfWall")
        }
    }
    
    func getIndexFrom(image: UIImage) -> Int {
        
        switch  image {
        case  #imageLiteral(resourceName: "aintNobodyGot"):
            return 0
        case  #imageLiteral(resourceName: "arthurFist"):
            return 1
        case #imageLiteral(resourceName: "baby"):
            return 2
        case    #imageLiteral(resourceName: "backInMyDay"):
            return 3
        case    #imageLiteral(resourceName: "batmanSlap"):
            return 4
        case#imageLiteral(resourceName: "buddyChrist"):
            return 5
        case #imageLiteral(resourceName: "cantJust"):
            return 6
        case   #imageLiteral(resourceName: "chubbyGirl"):
            return 7
        case     #imageLiteral(resourceName: "conspiracy"):
            return 8
        case     #imageLiteral(resourceName: "daveChappele"):
            return 9
        case      #imageLiteral(resourceName: "djPauly"):
            return 10
        case      #imageLiteral(resourceName: "duckFace"):
            return 11
        case      #imageLiteral(resourceName: "evilRaccon"):
            return 12
        case      #imageLiteral(resourceName: "firstDay"):
            return 13
        case       #imageLiteral(resourceName: "frogMeme"):
            return 14
        case       #imageLiteral(resourceName: "gollum"):
            return 15
        case        #imageLiteral(resourceName: "goodFellas"):
            return  16
        case        #imageLiteral(resourceName: "goodGuy"):
            return 17
        case        #imageLiteral(resourceName: "grandma"):
            return 18
        case        #imageLiteral(resourceName: "imaginationSpongebob"):
            return 19
        case         #imageLiteral(resourceName: "impossibru"):
            return 20
        case         #imageLiteral(resourceName: "kevinHart"):
            return 21
        case         #imageLiteral(resourceName: "lilWayne"):
            return 22
        case       #imageLiteral(resourceName: "lookAtMe"):
            return 23
        case        #imageLiteral(resourceName: "Maury"):
            return 24
        case        #imageLiteral(resourceName: "mjPopcorn"):
            return 25
        case        #imageLiteral(resourceName: "MrKrabs"):
            return 26
        case         #imageLiteral(resourceName: "noICant"):
            return 27
        case         #imageLiteral(resourceName: "noneOfMyBusiness"):
            return 28
        case        #imageLiteral(resourceName: "noPatrick"):
            return 29
        case        #imageLiteral(resourceName: "notSure"):
            return 30
        case        #imageLiteral(resourceName: "omgCat"):
            return 31
        case        #imageLiteral(resourceName: "pushItSomewhere"):
            return 32
        case        #imageLiteral(resourceName: "realMVP"):
            return 33
        case         #imageLiteral(resourceName: "satisfiedSeal"):
            return 34
        case        #imageLiteral(resourceName: "sayThatAgain"):
            return 35
        case         #imageLiteral(resourceName: "secondTerm"):
            return 36
        case         #imageLiteral(resourceName: "soYourTellingMe"):
            return 37
        case       #imageLiteral(resourceName: "spongebobHaveYOu"):
            return 38
        case        #imageLiteral(resourceName: "suddenClarity"):
            return 39
        case        #imageLiteral(resourceName: "taken"):
            return 40
        case         #imageLiteral(resourceName: "tellMe"):
            return 41
        case         #imageLiteral(resourceName: "toyStory"):
            return 42
        case         #imageLiteral(resourceName: "trollFace"):
            return 43
        case          #imageLiteral(resourceName: "whoObama"):
            return 44
        case          #imageLiteral(resourceName: "willFeral"):
            return 45
        case        #imageLiteral(resourceName: "willyWonka"):
            return 46
        case        #imageLiteral(resourceName: "winterIsComing"):
            return 47
        case    #imageLiteral(resourceName: "wolf"):
            return 48
        case     #imageLiteral(resourceName: "wolfOfWall"):
            return 49
        default:
            NSLog("Error: Cant Find Image")
            return 3
        }
        
    }
    
    
}

