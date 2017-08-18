//
//  WaitingRoomTableViewController.swift
//  MemeMaster
//
//  Created by ALIA M NEELY on 7/27/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import CloudKit
import UserNotifications

class WaitingRoomTableViewController: UITableViewController {
    @IBOutlet var waitingRoomTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let game = MPLocalGameController.shared.game else {return}
        MPLocalGameController.shared.fetchPlayersIn(game: game) {
            DispatchQueue.main.async {
                self.waitingRoomTableView.reloadData()
            }
            
            if MPLocalGameController.shared.players.count == MPLocalGameController.shared.game?.numberOfPlayers {
                
                self.startButtonTapped(Any.self)
            }
        }
        navigationTitle.title = MPLocalGameController.shared.game?.name
        NotificationCenter.default.addObserver(self, selector: #selector(updateGame), name: MPLocalGameController.GamesWereUpdatedNotification, object: nil)
    }
    
    func updateGame(){
        
    }
    @IBAction func startButtonTapped(_ sender: Any) {
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        guard let game = MPLocalGameController.shared.game else {return}
        MPLocalGameController.shared.fetchPlayersIn(game: game) {
            DispatchQueue.main.async {
                self.waitingRoomTableView.reloadData()
            }
        }
    }
    

    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MPLocalGameController.shared.players.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "waitingCell", for: indexPath)
        //FIX
        let player = MPLocalGameController.shared.players[indexPath.row]
        cell.textLabel?.text = player.displayName
        return cell
    }
 
}
