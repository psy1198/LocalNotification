//
//  ViewController.swift
//  NotificationEx
//
//  Created by 김성남 on 2020/02/17.
//  Copyright © 2020 김성남. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 유저 notification 권한 요청
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (didAllow, Error) in
      print("Success = \(didAllow)")
    }
    
    
  }

  @IBAction func pushButtonTouched(_ sender: UIButton) {
    let content = UNMutableNotificationContent()
    content.title = "This is title : 알림"
    content.subtitle = "This is Subtitle : 부재"
    content.body = "This is Body : 내용"
    content.badge = 1
    
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 4, repeats: false)
    let request = UNNotificationRequest(identifier: "timerdone", content: content, trigger: trigger)
    UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    
    
  }
  
}

