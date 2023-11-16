//
//  ListView.swift
//  Music
//
//  Created by Daniele Perrupane on 16/11/23.
//

import SwiftUI

struct ListView: View {
    
    var viewModel = StuffViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(viewModel.stuffs) { stuff in
                    NavigationLink{
                        OthersView(stuff: stuff)
                    } label : {
                        
                        Text(stuff.name)
                            .font(.system(size: 20.0))
                            .foregroundColor(Color(red: 0.908, green: 0.172, blue: 0.333))
                    }
                }
            }
            .listStyle(.plain)
        }
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
        //.background(Color.clear)
    }
}

#Preview {
    ListView()
}
