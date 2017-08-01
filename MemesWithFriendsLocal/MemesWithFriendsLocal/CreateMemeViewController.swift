//
//  CreateMemeViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import GameKit

class CreateMemeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITextFieldDelegate, ColorDelegate, MemeImageSelectedDelegate {
    
    //MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPicker.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateLabelFromTextfield), name: Notification.Name.UITextFieldTextDidChange, object: nil)
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (_) in
            self.person = CreateMemeViewController.currentPlayerArray[0]
            self.presentAlertController()
            CreateMemeViewController.currentPlayerArray.remove(at: 0)
        }
        
    }
    
    //MARK: - Properties
    static var currentPlayerArray: [String] = [] {
        didSet {
            print(currentPlayerArray.count)
        }
    }
    
    //MARK: - ColorDelegate Stuff
    
    fileprivate var selectedIndex = 0 {
        didSet {
            currentColor = selectedIndex == 0 ? .white : .black
        }
    }
    
    fileprivate var currentColor = UIColor.white {
        didSet {
            //firstTextField.textColor = currentColor
            //secondTextFiled.textColor = currentColor
        }
    }
    
    func pickedColor(color: UIColor) {
        firstTextLabel.textColor = color
        secondTextLabel.textColor = color
        currentColor = color// I added this, good addition?
    }
    
    //MARK: - TextField Delegates
    
    func updateLabelFromTextfield() {
        firstTextLabel.text = firstTextField.text?.uppercased()
        secondTextLabel.text = secondTextFiled.text?.uppercased()
    }

    func dismissKeyboard() {
        view.endEditing(true)
        self.firstTextLabel.text = self.firstTextField.text
        self.secondTextLabel.text = self.secondTextFiled.text
    }
    
    //MARK: - CollectionView Delegate / DataSource
    
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
        guard let image = cell.image.image else {return}
        self.memeImageView.image = image
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var colorPicker: ColorPicker!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextFiled: UITextField!
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    
    //MARK: - Create Meme
    
    //MARK: - Clear Memes
    
    func clearMeme() {
        firstTextField.text = ""
        secondTextFiled.text = ""
        firstTextLabel.text = ""
        secondTextLabel.text = ""
        memeImageView.image = nil
    }
    
    var counter = 0
    
    var person: String = ""
    
    //MARK: - IBActions
    
    @IBAction func createMemeButtonTapped(_ sender: Any) {

        if counter == 0 {
            createMemeWithoutRemoval()
        } else {
            createMemeWithRemoval()
        }
        
        // Call Alert Controller
        
        if GameController.shared.game?.numberOfMemes == 1 {
            performSegue(withIdentifier: "gameView", sender: self)
            return
            
        } else {
            GameController.shared.game?.numberOfMemes -= 1
            clearMeme()
            
        }
        
        self.person = randomWinner()
        presentAlertController()
    }
    
    //MARK: - Create Meme Functions
    
    func createMemeWithRemoval() {
        
        guard let firstText = firstTextField.text,
            let secondText = secondTextFiled.text,
            let image = memeImageView.image else { return }
        
        MemeController.shared.createMeme(image: image, firstText: firstText, secondText: secondText, voteCount: 0, memeTextColor: currentColor, playerName: self.person)
        
        // Removes person from array
        if let personIndex = CreateMemeViewController.currentPlayerArray.index(of: self.person) {
            CreateMemeViewController.currentPlayerArray.remove(at: personIndex)
        }
        
        self.person = ""
        clearMeme()
    }
    
    func createMemeWithoutRemoval() {
        
        guard let firstText = firstTextField.text,
            let secondText = secondTextFiled.text,
            let image = memeImageView.image else { return }
        
        MemeController.shared.createMeme(image: image, firstText: firstText, secondText: secondText, voteCount: 0, memeTextColor: currentColor, playerName: self.person)

        self.person = ""
        self.counter += 1
        clearMeme()
    }
    
    //MARK: - Generic Alert Controller
    
    func presentAlertController() {
        let alert = UIAlertController(title: "\(self.person)'s turn", message: "Please pass device to this person", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    //MARK: - Randomizer
    func randomWinner() -> String {
        //FIXME: - Cleanup
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: CreateMemeViewController.currentPlayerArray.count)
        return CreateMemeViewController.currentPlayerArray[randomNumber]
    }

}
