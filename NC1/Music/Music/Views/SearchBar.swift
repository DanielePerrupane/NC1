//
//  SearchBar.swift
//  Music
//
//  Created by Daniele Perrupane on 22/11/23.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            ZStack(alignment: .leading) {
                
                TextField("Your Library", text: $searchText)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 30)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                
                if searchText.isEmpty {
                    VStack {
                        Image(systemName: "magnifyingglass") // Icona di ricerca
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                        
                    }
                }
            }
            
            if !searchText.isEmpty {
                Button(action: {
                    searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill") // Icona per cancellare il testo
                        .foregroundColor(.gray)
                        .padding(.trailing, 8)
                }
            }
        }
        
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            SearchBar()
                .padding(.top, 20)
            
            // Altri contenuti della tua vista
        }
        .padding()
    }
}


#Preview {
    SearchBar()
}
