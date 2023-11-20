//
//  SongView.swift
//  Music
//
//  Created by Daniele Perrupane on 16/11/23.
//

import SwiftUI

struct SongView: View {
    var song : Song
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 170, height: 165)
                .background(
                    Image(song.imageName)
                        .resizable()
                        //.aspectRatio(contentMode: .fill)
                        .frame(width: 170, height: 185)
                        .clipped()
                    
                ).cornerRadius(10).shadow(radius: 5)
            VStack(alignment: .leading){
                Text(song.title)
                
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                
                Text(song.artist)
                    .lineLimit(nil)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    SongView(song: Song(imageName: "trapsoul", title: "T R A P S O U L", artist: "Bryson Tiller"))
}
