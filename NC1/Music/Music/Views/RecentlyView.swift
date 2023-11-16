//
//  RecentlyView.swift
//  Music
//
//  Created by Daniele Perrupane on 16/11/23.
//

import SwiftUI

struct RecentlyView: View {
    var songModel = SongViewModel()
 
    
    var body: some View {
        ForEach(0..<songModel.songs.count-1, id: \.self){
            index in
            
            
                HStack{
                    SongView(song: Song(imageName: "Right My Wrongs", title: "Right My Wrongs", artist: "Bryson Tiller"))
                    SongView(song: Song(imageName: "The Color Violet", title: "The Color Violet", artist: "Tony Linez"))
                }
            
        }
    }
}

#Preview {
    RecentlyView()
}
