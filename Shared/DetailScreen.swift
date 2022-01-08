//
//  DetailScreen.swift
//  DZ№9 (iOS)
//
//  Created by Egor Malyshev on 08.01.2022.
//

import SwiftUI

struct DetailScreen: View {
    
    let album: Album

    var body: some View {
        VStack {
            Text(album.collectionName)
                .font(.title3)
                .foregroundColor(.primary)
                .lineLimit(1)
            Text(album.artistName)
                .font(.title3)
                .foregroundColor(.primary)
                .lineLimit(1)
        }
        .padding(.horizontal, 16)
    }
}
