//
//  PlaylistHeaderCell.swift
//  RebuildSpotifyUI
//
//  Created by Chinh on 4/22/24.
//

import SwiftUI
import SwiftfulUI

struct PlaylistHeaderCell: View {
    var height: CGFloat = 300
    var title: String = "Song playlist title goes here"
    var subtitle: String = "Subtitle goes here"
    var imageName: String = Constants.randomImage
    var shadowColor: Color = .spotifyBlack.opacity(0.8)
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay {
                ImageLoaderView(urlString: imageName)
            }
//        ImageLoaderView(urlString: imageName)
            .overlay(alignment: .bottomLeading,
                     content: {
                VStack(alignment: .leading, spacing: 8, content: {
                    Text(subtitle)
                        .font(.headline)
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                })
                .foregroundStyle(.spotifyWhite)
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    LinearGradient(
                        colors: [
                            shadowColor.opacity(.zero),
                            shadowColor
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            })
            .asStretchyHeader(startingHeight: height)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        ScrollView {
            PlaylistHeaderCell()
        }
        .ignoresSafeArea()
    }
}
