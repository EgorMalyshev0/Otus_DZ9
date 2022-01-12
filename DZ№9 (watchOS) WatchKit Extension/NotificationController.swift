//
//  NotificationController.swift
//  DZ№9 (watchOS) WatchKit Extension
//
//  Created by Egor Malyshev on 09.01.2022.
//

import WatchKit
import SwiftUI
import UserNotifications

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    
    var title: String = ""
    var message: String = ""

    override var body: NotificationView {
        return NotificationView(title: title, message: message)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        let data = notification.request.content.userInfo as? [String: Any]
        let aps = data?["aps"] as? [String: Any]
        let alert = aps?["alert"] as? [String: Any]
        
        title = alert?["title"] as? String ?? ""
        message = alert?["body"] as? String ?? ""
    }
}
