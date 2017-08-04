//
//  SetupViewController.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import GameKit

class SetupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        
        // Keyboard Notifications for pushup view
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: Notification.Name.UIKeyboardWillHide, object: nil)
        
        startButton.setImage(#imageLiteral(resourceName: "StartButtonHighlighted"), for: .highlighted)
        
        fourthPlayerTextField.alpha = 0
        fifthPlayerTextField.alpha = 0
        sixthPlayerTextField.alpha = 0
        
        self.topic = randomTopic()
        randomTopicButton.setTitle("\(self.topic)", for: .normal)
    }
    
    
    
    //MARK: - Properties
    
    var numberOfPlayersForGame: String = "3"
    var playerArray: [String] = []
    var topic: String = "No Topic"
    let pickerArray: [String] = ["3", "4", "5", "6"]
//    var feedbackGenerator: UIImpactFeedbackGenerator? = nil
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var firstPlayerTextField: UITextField!
    @IBOutlet weak var secondPlayerTextField: UITextField!
    @IBOutlet weak var thirdPlayerTextField: UITextField!
    @IBOutlet weak var fourthPlayerTextField: UITextField!
    @IBOutlet weak var fifthPlayerTextField: UITextField!
    @IBOutlet weak var sixthPlayerTextField: UITextField!
    @IBOutlet weak var randomTopicButton: UIButton!
    @IBOutlet weak var numberOfPlayersTextField: UITextField!//FIXME: - We Can delete this right?
    @IBOutlet weak var playerPicker: UIPickerView!
    @IBOutlet weak var startButton: UIButton!
    
    //MARK: - IBActions
    
    @IBAction func tapGestureTapped(_ sender: Any) {
        
        self.firstPlayerTextField.resignFirstResponder()
        self.secondPlayerTextField.resignFirstResponder()
        self.thirdPlayerTextField.resignFirstResponder()
        self.fourthPlayerTextField.resignFirstResponder()
        self.fifthPlayerTextField.resignFirstResponder()
        self.sixthPlayerTextField.resignFirstResponder()
    }
    
    @IBAction func randomTopicButtonTapped(_ sender: Any) {
        
        self.topic = randomTopic()
        randomTopicButton.setTitle("\(self.topic)", for: .normal)
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        GameController.shared.feedbackGenerator?.impactOccurred()
    }
    
    
    
    //MARK: - Spencer's Keyboard Functions
    
    func keyboardWillShow(notification: NSNotification) {
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height - 12 // Added - 12
                self.playerPicker.isHidden = true
            }
        }
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height - 12 // Added - 12
                self.playerPicker.isHidden = false
            }
        }
    }
    
    //MARK: - Picker Methods / Data Source
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numberOfPlayersForGame = pickerArray[row]
        
        if numberOfPlayersForGame == "3" {
            hideFourthTextField(withDuration: 0.5)
            hideFifthTextField(withDuration: 0.5)
            hideSixthTextField(withDuration: 0.5)
        } else if numberOfPlayersForGame == "4" {
            hideFifthTextField(withDuration: 0.5)
            hideSixthTextField(withDuration: 0.5)
            showFourthTextField(withDuration: 1)
        } else if numberOfPlayersForGame == "5" {
            hideSixthTextField(withDuration: 0.5)
            showFourthTextField(withDuration: 1)
            showFifthTextField(withDuration: 1)
        } else if numberOfPlayersForGame == "6" {
            showFourthTextField(withDuration: 1)
            showFifthTextField(withDuration: 1)
            showSixthTextField(withDuration: 1)
        }
    }
    
    //MARK: - Player Creation
    
    func createPlayersForGame() {
        
        if numberOfPlayersForGame == "3" {
            guard let firstPlayer = firstPlayerTextField.text else { NSLog("First Player Is nil"); return }
            guard let secondPlayer = secondPlayerTextField.text else { NSLog("Second Player Is nil"); return }
            guard let thirdPlayer = thirdPlayerTextField.text else { NSLog("Third Player Is nil"); return }
            playerArray.append(firstPlayer)
            playerArray.append(secondPlayer)
            playerArray.append(thirdPlayer)
            
        } else if numberOfPlayersForGame == "4" {
            guard let firstPlayer = firstPlayerTextField.text else { NSLog("First Player Is nil"); return }
            guard let secondPlayer = secondPlayerTextField.text else { NSLog("Second Player Is nil"); return }
            guard let thirdPlayer = thirdPlayerTextField.text else { NSLog("Third Player Is nil"); return }
            guard let fourthPlayer = fourthPlayerTextField.text else { NSLog("Fourth Player Is nil"); return }
            playerArray.append(firstPlayer)
            playerArray.append(secondPlayer)
            playerArray.append(thirdPlayer)
            playerArray.append(fourthPlayer)
            
        } else if numberOfPlayersForGame == "5" {
            guard let firstPlayer = firstPlayerTextField.text else { NSLog("First Player Is nil"); return }
            guard let secondPlayer = secondPlayerTextField.text else { NSLog("Second Player Is nil"); return }
            guard let thirdPlayer = thirdPlayerTextField.text else { NSLog("Third Player Is nil"); return }
            guard let fourthPlayer = fourthPlayerTextField.text else { NSLog("Fourth Player Is nil"); return }
            guard let fifthPlayer = fifthPlayerTextField.text else { NSLog("Fifth Player Is nil"); return }
            playerArray.append(firstPlayer)
            playerArray.append(secondPlayer)
            playerArray.append(thirdPlayer)
            playerArray.append(fourthPlayer)
            playerArray.append(fifthPlayer)
            
        } else if numberOfPlayersForGame == "6" {
            guard let firstPlayer = firstPlayerTextField.text else { NSLog("First Player Is nil"); return }
            guard let secondPlayer = secondPlayerTextField.text else { NSLog("Second Player Is nil"); return }
            guard let thirdPlayer = thirdPlayerTextField.text else { NSLog("Third Player Is nil"); return }
            guard let fourthPlayer = fourthPlayerTextField.text else { NSLog("Fourth Player Is nil"); return }
            guard let fifthPlayer = fifthPlayerTextField.text else { NSLog("Fifth Player Is nil"); return }
            guard let sixthPlayer = sixthPlayerTextField.text else { NSLog("Sixth Player Is nil"); return }
            playerArray.append(firstPlayer)
            playerArray.append(secondPlayer)
            playerArray.append(thirdPlayer)
            playerArray.append(fourthPlayer)
            playerArray.append(fifthPlayer)
            playerArray.append(sixthPlayer)
            
        }
        
        let numberAsString = numberOfPlayersForGame
        guard let number = Int(numberAsString) else { NSLog("NumberAsString is nil"); return }
        GameController.shared.createGameWith(numberOfPlayers: number, topic: self.topic)
        GameController.shared.game?.currentPlayers = playerArray
        CreateMemeViewController.currentPlayerArray = playerArray
        
    }
    
    //MARK: - Show/Hide Methods for Player TextFields
    
    // SHOW
    func showFourthTextField(withDuration: Double) {
        UIView.animate(withDuration: withDuration) {
            self.fourthPlayerTextField.alpha = 1
        }
    }
    
    func showFifthTextField(withDuration: Double) {
        UIView.animate(withDuration: withDuration) {
            self.fifthPlayerTextField.alpha = 1
        }
    }
    
    func showSixthTextField(withDuration: Double) {
        UIView.animate(withDuration: withDuration) {
            self.sixthPlayerTextField.alpha = 1
        }
    }
    
    // HIDE
    func hideFourthTextField(withDuration: Double) {
        UIView.animate(withDuration: withDuration) {
            self.fourthPlayerTextField.alpha = 0
        }
    }
    
    func hideFifthTextField(withDuration: Double) {
        UIView.animate(withDuration: withDuration) {
            self.fifthPlayerTextField.alpha = 0
        }
    }
    
    func hideSixthTextField(withDuration: Double) {
        UIView.animate(withDuration: withDuration) {
            self.sixthPlayerTextField.alpha = 0
        }
    }
    
    //MARK: - Randomizer
    func randomTopic() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: StoredTopics.topics.count)
        return StoredTopics.topics[randomNumber]
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToCreateMeme" {
            
            if let _ = segue.destination as? PickMemeViewController {
                createPlayersForGame()
            }
        }
    }
}
