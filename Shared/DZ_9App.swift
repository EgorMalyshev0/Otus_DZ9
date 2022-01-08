//
//  DZ_9App.swift
//  Shared
//
//  Created by Egor Malyshev on 08.01.2022.
//

import SwiftUI

@main
struct DZ_9App: App {
    
    @ObservedObject var router: Router = .init()
    @ObservedObject var viewModel: AlbumsViewModel = .init()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
                .environmentObject(viewModel)
        }
    }
}
