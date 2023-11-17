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
        
            Text("Recently Added")
                .font(.title)
                .fontWeight(.semibold)
            //Per rendere il Text visibile anche in dark mode
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .position(x:118.0,y:18.0)
        
        HStack {
            
            ForEach(songModel.songs) { song in
                        
                        NavigationLink{
                            
                            SongView(song: song)
                            
                        } label : {
                            //Rectangle()
                                //.foregroundColor(.clear)
                                //.frame(width: 180, height: 195)
                                //.background(
                                    
                                //).cornerRadius(5).shadow(radius: 5)
                            HStack{
                                VStack{
                                    Image(song.imageName)
                                    //.resizable()
                                    //.aspectRatio(contentMode: .fill)
                                    //.frame(width: 180, height: 195)
                                    //.clipped()
                                        .cornerRadius(5).shadow(radius: 5)
                                    Text(song.title)
                                        .padding(.trailing, 55.0)
                                        .foregroundStyle(.black)
                                    Text(song.artist)
                                        .foregroundStyle(.gray)
                                        .padding(.trailing, 90.0)
                                }
                            }
                                
                        }
                        //Divider x ogni stuffs
            //            Divider()
            //                .padding(.horizontal)
                        
                        
            }
        }
         
        
        
        
        
        
//        ForEach(0..<songModel.songs.count-1, id: \.self){
//            index in
//            
//            
//                HStack{
//                    SongView(song: Song(imageName: "Right My Wrongs", title: "Right My Wrongs", artist: "Bryson Tiller"))
//                    SongView(song: Song(imageName: "The Color Violet", title: "The Color Violet", artist: "Tony Linez"))
//                }
//            
//        }
    }
}

#Preview {
    RecentlyView()
}
