//
//  ViewController.swift
//  Notifications
//
//  Created by Omar Alejandro Robles Altamirano on 26/12/19.
//  Copyright © 2019 Alejandro Robles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let content = UNMutableNotificationContent()
        content.title = "Title Notification"
        content.body = "Body"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
        let request = UNNotificationRequest(identifier: "testIdentifier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }


}

