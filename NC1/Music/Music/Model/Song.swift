//
//  SongModel.swift
//  Music
//
//  Created by Daniele Perrupane on 14/11/23.
//

import Foundation


struct Song: Identifiable {
    
    var id : UUID = UUID()
    
    var imageName : String
    var title : String
    var artist : String
//    var albumName : String
    
    
}
