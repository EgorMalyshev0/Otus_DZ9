//
//  AlbumsViewModel.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import Foundation

class AlbumsViewModel: ObservableObject {
    
    @Published var albums: [Album] = .init()
    @Published var isLoading: Bool = false
    
    let albumsApi: AlbumsApi = .init()
    let defaultSearchText: String = "top"
    
    func performSearch(with text: String) {
        isLoading = true
        albumsApi.getAlbums(by: text) { [weak self] albums in
            self?.isLoading = false
            if let albums = albums {
                self?.albums = albums
            }
        }
    }
    
}
