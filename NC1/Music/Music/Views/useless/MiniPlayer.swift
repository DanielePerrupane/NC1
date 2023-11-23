//
//  MiniPlayer.swift
//  Music
//
//  Created by Daniele Perrupane on 23/11/23.
//

import SwiftUI

struct MiniPlayer: View {
    var song : Song
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        // Immagine dell'artista
        //                Image(systemName: song.imageName)
        //                    .resizable()
        //                    .frame(width: 50, height: 50)
        //                    .cornerRadius(25)
        
        // Informazioni sulla canzone e controlli di riproduzione
        ZStack{
            //Frame player
            Rectangle()
                .frame(width: 380.0, height: 70.0)
                .cornerRadius(15.0)
                .foregroundColor(colorScheme == .dark ? Color.gray : Color.white)
                .shadow(radius: 3)
                //.opacity(0.3)
                
            HStack {
                Spacer()
                HStack{
                    //Copertina canzone
                    VStack{
                        
                        Image(song.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(8.0)
                        
                            //.frame(width: 55,height: 55)
                           
                            //.clipped()
                    }
                    .frame(width: 55,height: 55)
                    
                    VStack (alignment: .leading){
                        Text(song.title)
                        
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .font(.system(size: 15))
                            .multilineTextAlignment(.leading)
                            
                            .fontWeight(.semibold)
                            .lineLimit(2)
                    }
                        
                }
                
                Spacer()
                Spacer()
                
                
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "play.fill")
                            .font(.system(size: 23))
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .frame(width: 35,height: 35)
                        .aspectRatio(contentMode: .fill)
                    })
                    
                    Button(action: {
                    } , label : {
                            Image(systemName: "forward.fill")
                                .font(.system(size: 23))
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                .frame(width: 45,height: 35)
                        
                    })
                
                }
                Spacer()
                //.aspectRatio(contentMode: .fill)
            }.padding(.horizontal,-20.0)
            
            
        }
        
        //            //Titolo della canzone
        //            Circle()
        //                .foregroundColor(.clear)
        //                .frame(width: 170, height: 165)
        //            //Image(song.imageName)
        //
        //        Spacer()
        //        // Controlli di riproduzione
        //        Image(systemName: "play.fill")
        //            .resizable()
        //            .frame(width: 20, height: 20)
        //            .onTapGesture {
        //                // Aggiungi azioni per gestire la riproduzione/pausa
        //            }
        //            .background(.gray)
        //            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MiniPlayer(song: Song(imageName: "trapsoul", title: "I don't fuck with you ", artist: ""))
}
