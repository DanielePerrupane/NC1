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
                .frame(width: 180, height: 195)
                .background(
                    Image(song.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 180, height: 195)
                        .clipped()
                        
                ).cornerRadius(5).shadow(radius: 5)
            VStack(alignment: .leading){
                Text(song.title)
                    //.padding(.trailing, 55.0)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    
                Text(song.artist)
                    .lineLimit(nil)
                    .foregroundStyle(.gray)
                    
                    //.padding(.left)
                    //.padding(.trailing, 90.0)
            }
//            .frame(width: 180)

        }
//        .frame(width: 180)
    }
}

#Preview {
    SongView(song: Song(imageName: "Right My Wrongs", title: "Right My Wrongs", artist: "Bryson Tiller"))
}
