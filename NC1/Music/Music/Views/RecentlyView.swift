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
        ScrollView{
            VStack(alignment: .leading) {
                Text("Recently Added")
                    .fontWeight(.heavy)
                    .font(.system(size: 23))
                    //.padding(.bottom, 10.0)
                    //.position(x:110.0, y:25.0)
                HStack{
                ForEach(songModel.songs) { song in
                    
                    NavigationLink{
                        SongView(song: song)
                    } label : {
                        VStack{
                            
                                SongView(song: Song(imageName: song.imageName, title: song.title, artist: song.artist))
                                
                            }
                        .padding(.horizontal,0.0)
                        }
                    .padding(.horizontal,5.0)
                        
                    }
                }
            }
            .frame(width: 393,height: 350)
            }
        .padding(.top,-30.0)
            
            
        }
    }


#Preview {
    RecentlyView()
}
