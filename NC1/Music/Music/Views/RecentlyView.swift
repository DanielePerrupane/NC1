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
                VStack {
                    ForEach(songModel.songs.indices) { index in
                        if index % 2 == 0 {
                            HStack(spacing:20.0) {
                                NavigationLink(destination: SongView(song: songModel.songs[index])) {
                                    SongView(song: songModel.songs[index])
                                }
                                
                                if index + 1 < songModel.songs.count {
                                    NavigationLink(destination: SongView(song: songModel.songs[index + 1])) {
                                        SongView(song: songModel.songs[index + 1])
                                    }
                                }
                            }
                            
                        }
                    }
                }
            }
            
        }
        
        
        
    }
}


#Preview {
    RecentlyView()
}
