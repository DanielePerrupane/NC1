//
//  SongView.swift
//  Music
//
//  Created by Daniele Perrupane on 16/11/23.
//

import SwiftUI

struct SongView: View {
    var song : Song
    
    var body: some View {
        VStack{
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 190, height: 195)
                .background(
                    Image(song.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 190, height: 195)
                        .clipped()
                        
                ).cornerRadius(5).shadow(radius: 5)
            VStack{
                Text(song.title)
                    .padding(.trailing, 55.0)
                Text(song.artist)
                    .foregroundStyle(.gray)
                    .padding(.trailing, 90.0)
            }
            
        }
    }
}

#Preview {
    SongView(song: Song(imageName: "Right My Wrongs", title: "Right My Wrongs", artist: "Bryson Tiller"))
}
