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
                VStack {
                    
                    //Sostituire con ListView
                    List {
                        ForEach(0..<viewModel.stuffs.count, id: \.self) { index in
                            NavigationLink{
                                OthersView(stuff: viewModel.stuffs[index])
                            } label : {
                                
                                VStack{
                                    Image(systemName: viewModel.stuffs[index].icon)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.946, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                                        .frame(width: 10, height: 30)
                                        .fontWeight(.bold)
                                }
                                    
                                    Text(viewModel.stuffs[index].name)
                                        .font(.system(size: 20.0))
                                        .fontWeight(.semibold)
                                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                        .padding(.leading, 10)
                                
                            }
                        }
                        
                        
                        
                        
                    }
                    
                    .listStyle(.plain)
                    //Fine parte sostituita
                    RecentlyView()
                    
                    
                    //Divisione tra Recently e ListView
                    //
                    
                    //Metodo che richiama i Recently Added già impostati
                    
                       
                            //.padding(.top,10.0)
                    
                }
                .navigationBarTitle("Library")
                .scrollContentBackground(.hidden)
                .toolbar{
                    ToolbarItemGroup(placement:
                            .topBarTrailing) {
                                EditButton()
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.946, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                            }
                }
                
                
                
                
                
                
               
                
            }
            
        }
        
        
        
    }
}


#Preview {
    MusicView()
}
