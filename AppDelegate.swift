//
//  AppDelegate.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 7/28/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 10, *) {
            GameController.shared.feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        } 
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { (isAuthorized, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            if isAuthorized {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
            
        }
       // CloudKitManager().requestDiscoverabilityPermission()
        MPLocalGameController.shared.loadAllGames()
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        MPLocalGameController.subscribeToGameModification()
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        
    }


}

