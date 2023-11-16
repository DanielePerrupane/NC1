//
//  SwiftUIView.swift
//  Music
//
//  Created by Daniele Perrupane on 14/11/23.
//

import SwiftUI

struct MusicView: View {
    
    var viewModel = StuffViewModel()
    var songModel = SongViewModel()
    var body: some View {
        
        TabView{
            NavigationStack {
                
                
                VStack {
                    List {
                        Text("Library")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
        
                        ForEach(viewModel.stuffs) { stuff in
                            NavigationLink{
                                OthersView(stuff: stuff)
                                
                            } label : {
                                Text(stuff.name)
                                    .font(.system(size: 20.0))
                                    .foregroundColor(Color(red: 0.808, green: 0.172, blue: 0.333))
                            }
                        }
                        ZStack {
                            Text("Recently Added")
                                .font(.custom("SF UI Display", size: 25.0))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        .listRowInsets(.init(top: 50, leading: 20, bottom: 20, trailing: 0))
                        
                        HStack {
                            ForEach(songModel.songs.chunked(into: 2), id: \.self) { songGroup in
                                HStack {
                                    ForEach(songGroup, id: \.id) { song in
                                        NavigationLink(destination: SongView(song: song)){
                                            // Contenuto della singola canzone all'interno della NavigationLink
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .toolbar{
                        ToolbarItemGroup(placement:
                                .topBarTrailing) {
                                    EditButton()
                                        .foregroundColor(Color(red: 0.808, green: 0.172, blue: 0.333))
                                }
                }
                }
                //.navigationTitle("Library")
                
                
                
                
                
            }
            
        }
        
        
        
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

#Preview {
    MusicView()
}
