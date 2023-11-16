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
        Song(imageName: "Right My Wrongs", title: "Right My Wrongs", artist: "Bryson Tiller"),
        Song(imageName: "The Color Violet", title: "The Color Violet", artist: "Tory Lanez")
    
    ]
    
    var selectedbutton : String = ""
}
