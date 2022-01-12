//
//  AlbumsScreen.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct AlbumsScreen: View {
    
    @EnvironmentObject var viewModel: AlbumsViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.albums, id: \.self) { album in
                NavigationLink(destination: DetailScreen(album: album)) {
                    AlbumsScreenCell(album: album)
                }
                .navigationTitle("Albums")
            }
            .onAppear {
                viewModel.performSearch(with: viewModel.defaultSearchText)
            }
        }
    }
}
