//
//  OthersView.swift
//  Music
//
//  Created by Daniele Perrupane on 15/11/23.
//

import SwiftUI

struct OthersView: View {
    
    var stuff : Stuff
    var body: some View {
        
        
        
            VStack {
                        Text("Hi")
                    }
            .navigationBarTitle("Playlist")
                        
        
    }
}

#Preview {
    OthersView(stuff:
                Stuff(name: "Example", icon: "")
    )
}
