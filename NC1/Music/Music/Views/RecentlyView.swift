//
//  RecentlyView.swift
//  Music
//
//  Created by Daniele Perrupane on 16/11/23.
//

import SwiftUI

struct RecentlyView: View {
    var songModel = SongViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack{
        Text("Recently Added")
            .font(.title)
            .fontWeight(.semibold)
        //Per rendere il Text visibile anche in dark mode
            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            .position(x:110.0)
            .padding(.bottom,20.0)
        
        HStack {
            
            ForEach(songModel.songs) { song in
                
                NavigationLink{
                    
                    SongView(song: song)
                    
                } label : {
                    
                    HStack{
                        VStack{
                            
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
                            VStack{
                                Text(song.title)
                                    .padding(.trailing, 55.0)
                                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                Text(song.artist)
                                    .foregroundStyle(.gray)
                                    .padding(.trailing, 90.0)
                            }
                            
                        }
                    }
                    .frame(width: 185, height: 190)
                }
            }
        }
    }
    }
}

#Preview {
    RecentlyView()
}
