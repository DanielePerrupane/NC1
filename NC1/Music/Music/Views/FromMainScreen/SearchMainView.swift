//
//  SearchMainView.swift
//  Music
//
//  Created by Daniele Perrupane on 21/11/23.
//

import SwiftUI

struct SearchMainView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                //Sostituire con ListView
                //SearchBar()
                SearchView()
                    //.padding(.top,13.0)
                //Fine parte sostituita
            }
            
        }
    }
}

#Preview {
    SearchMainView()
}
