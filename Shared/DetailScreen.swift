//
//  DetailScreen.swift
//  DZ№9 (iOS)
//
//  Created by Egor Malyshev on 08.01.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailScreen: View {
    
    let album: Album

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                WebImage(url: URL(string: album.artworkUrl100 ?? ""))
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(10)
                    .frame(maxWidth: 300)
                Text(album.collectionName)
                    .font(.title3)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                Text(album.artistName)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                Text(album.releaseDate?.yearString() ?? "")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 16)
        }
    }
}
