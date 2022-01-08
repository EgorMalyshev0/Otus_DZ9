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
        VStack(spacing: 10) {
            Text(album.collectionName)
                .font(.title3)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            Text(album.artistName)
                .font(.title3)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 16)
    }
}
