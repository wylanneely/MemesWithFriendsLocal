//
//  CreateMemeViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import GameKit

class CreateMemeViewController: UIViewController, UITextFieldDelegate, ColorDelegate {
    
    //MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.memeImageView.image = image
        feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        
        submitButton.setImage(#imageLiteral(resourceName: "SubmitHighlighted Copy"), for: .highlighted)
        
        colorPicker.delegate = self
        
        firstTextField.tag = 1
        secondTextFiled.tag = 2
    }
    
    //MARK: - Properties
    static var currentPlayerArray: [String] = [] {
        didSet {
            print(currentPlayerArray.count)
        }
    }
    var keyboardIsShown = false
    var image: UIImage?
    var counter = 0
    var person: String = ""
    var feedbackGenerator: UIImpactFeedbackGenerator? = nil
    
    //MARK: - Keyboard Functions
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func keyboardWillShow(notification: NSNotification) {
        
        guard !keyboardIsShown else { return }
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
                keyboardIsShown = true
            }
        }
        
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y += keyboardSize.height
                keyboardIsShown = false
            }
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
        firstTextField.textColor = color
        secondTextFiled.textColor = color
        currentColor = color// I added this, good addition?
    }
    
    //MARK: - TextField Delegates
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    //MARK: - CollectionView Delegate / DataSource
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let text = textField.text else { return true }
        
        // First Text Field
        if textField.tag == 1 {
            
            let  char = string.cString(using: .utf8)!
            let isBackSpace = strcmp(char, "\\b")
            if (isBackSpace == -92) {
                return true
            }
            
            if text.characters.count >= 24 {
                return false
            } else {
                return true
            }
            
        }
        
        // Second Text Field
        
        if textField.tag == 2 {
            
            let  char = string.cString(using: .utf8)!
            let isBackSpace = strcmp(char, "\\b")
            if (isBackSpace == -92) {
                return true
            }
            
            if text.characters.count >= 16 {
                return false
            } else {
                return true
            }
            
        }
        
        // Default
        
        return true
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var colorPicker: ColorPicker!
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextFiled: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    
    //MARK: - Clear Memes
    
    func clearMeme() {
        firstTextField.text = ""
        secondTextFiled.text = ""
        memeImageView.image = nil
    }
    
    //MARK: - IBActions
    
    @IBAction func tapGestureButtonTapped(_ sender: Any) {
        
        firstTextField.resignFirstResponder()
        secondTextFiled.resignFirstResponder()
    }
    
    
    @IBAction func createMemeButtonTapped(_ sender: Any) {
        
        if counter == 0 {
            feedbackGenerator?.prepare()
            createMemeWithoutRemoval()
        } else {
            feedbackGenerator?.prepare()
            createMemeWithRemoval()
        }
        
        // Call Alert Controller
        
        if GameController.shared.game?.numberOfMemes == 1 {
            performSegue(withIdentifier: "gameView", sender: self)
            return
            
        } else {
            GameController.shared.game?.numberOfMemes -= 1
            clearMeme()
            // Segue Back
            performSegue(withIdentifier: "backToMemeSelection", sender: self)
        }
        
        feedbackGenerator?.impactOccurred()
        
    }
    
    //MARK: - Create Meme Functions
    
    func createMemeWithRemoval() {
        print("With removal called")
        
        guard let firstText = firstTextField.text,
            let secondText = secondTextFiled.text,
            let image = memeImageView.image else { return }
        
        MemeController.shared.createMeme(image: image, firstText: firstText, secondText: secondText, voteCount: 0, memeTextColor: currentColor, playerName: GameController.shared.person)
        
        // Removes person from array
        if let personIndex = CreateMemeViewController.currentPlayerArray.index(of: self.person) {
            CreateMemeViewController.currentPlayerArray.remove(at: personIndex)
        }
        
        self.person = ""
        clearMeme()
    }
    
    func createMemeWithoutRemoval() {
        print("Without removal called")
        guard let firstText = firstTextField.text,
            let secondText = secondTextFiled.text,
            let image = memeImageView.image else { return }
        
        MemeController.shared.createMeme(image: image, firstText: firstText.uppercased(), secondText: secondText.uppercased(), voteCount: 0, memeTextColor: currentColor, playerName: GameController.shared.person)
        
        
        self.counter += 1
        clearMeme()
    }
    
}
