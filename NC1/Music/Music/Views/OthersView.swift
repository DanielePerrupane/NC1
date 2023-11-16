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
        
            Image("AppIcon")
        
    }
}

#Preview {
    OthersView(stuff:
                Stuff(name: "Example")
    )
}
