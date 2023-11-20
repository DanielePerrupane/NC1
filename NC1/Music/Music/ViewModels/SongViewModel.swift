//
//  SongViewModel.swift
//  Music
//
//  Created by Daniele Perrupane on 14/11/23.
//

import SwiftUI

@Observable
class SongViewModel {
    var songs = [
        Song(imageName: "trapsoul", title: "Right My Wrongs", artist: "Bryson Tiller"),
        Song(imageName: "The Color Violet", title: "The Color Violet", artist: "Tory Lanez"),
        Song(imageName: "Under The Influence", title: "Under The Influence", artist: "Chris Brown"),
        Song(imageName: "Relax", title: "Un Giro Con Te", artist: "Calcutta"),
        
    
    
    ]
    
    var selectedbutton : String = ""
}
