//
//  ContentView.swift
//  Shared
//
//  Created by Egor Malyshev on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    @EnvironmentObject var viewModel: AlbumsViewModel
    
    init() {
        #if os(iOS) || os(tvOS)
        UIScrollView.appearance().bounces = false
        #endif
    }
    
    var body: some View {
        AlbumsScreen()
            .environmentObject(viewModel)
    }
}
