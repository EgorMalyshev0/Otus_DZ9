//
//  NotificationView.swift
//  DZ№9 (watchOS) WatchKit Extension
//
//  Created by Egor Malyshev on 09.01.2022.
//

import SwiftUI

struct NotificationView: View {
    
    let title: String
    let message: String
    
    var body: some View {
        VStack {
            Text(title)
            Text(message)
        }
    }
}
