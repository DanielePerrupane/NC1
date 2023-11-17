//
//  SwiftUIView.swift
//  Music
//
//  Created by Daniele Perrupane on 14/11/23.
//

import SwiftUI

struct MusicView: View {
    //Per rendere il Text visibile anche in dark mode
    @Environment(\.colorScheme) var colorScheme
    var viewModel = StuffViewModel()
    var songModel = SongViewModel()
    var body: some View {
        
        TabView{
            
            NavigationView {
                ScrollView {
                    //Divider del Title
                    Divider()
                        .padding(.horizontal)
                    
                    
                    //Sostituire con ListView
                    ForEach(viewModel.stuffs) { stuff in
                        
                        NavigationLink{
                            OthersView(stuff: stuff)
                            
                            
                            
                        } label : {
                            
                            Text(stuff.name)
                                .font(.system(size: 20.0))
                                .foregroundColor(Color(red: 0.808, green: 0.172, blue: 0.333))
                                
                                
                        }
                        //Divider x ogni stuffs
                        Divider()
                            .padding(.horizontal)
                        
                        
                    }
                    //Fine parte sostituita
                    
                    
                    
                    //Divisione tra Recently e ListView
                    Spacer(minLength: 30)
                    
                    //Metodo che richiama i Recently Added già impostati
                    RecentlyView()
                        .padding(.top,10.0)
                }
                .scrollContentBackground(.hidden)
                .toolbar{
                    ToolbarItemGroup(placement:
                            .topBarTrailing) {
                                EditButton()
                                    .foregroundColor(Color(red: 0.808, green: 0.172, blue: 0.333))
                            }
                }
                .navigationTitle("Library")
                Divider()
                
                
                
                
                
            }
            
        }
        
        
        
    }
}


#Preview {
    MusicView()
}
