//
//  SwiftUIView.swift
//  Music
//
//  Created by Daniele Perrupane on 14/11/23.
//

import SwiftUI
import SwiftUIIntrospect

struct LibraryView: View {
    //Per rendere il Text visibile anche in dark mode
    @Environment(\.colorScheme) var colorScheme
    var viewModel = StuffViewModel()
    var songModel = SongViewModel()
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                //Sostituire con ListView
                ListView()
                    .navigationBarTitle("Library")
                    .padding(.top,13.0)
                //Fine parte sostituita
            }
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


#Preview {
    LibraryView()
}
