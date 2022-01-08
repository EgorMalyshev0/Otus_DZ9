//
//  AlbumsScreenCell.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct AlbumsScreenCell: View {
    
    let album: Album
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(album.collectionName)
                .font(.caption)
                .foregroundColor(.primary)
                .lineLimit(1)
            Text(album.artistName)
                .font(.caption)
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
    }
}
