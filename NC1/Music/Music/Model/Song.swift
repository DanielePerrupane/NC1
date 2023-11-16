//
//  SongModel.swift
//  Music
//
//  Created by Daniele Perrupane on 14/11/23.
//

import Foundation


struct Song: Identifiable, Hashable {
    var id : UUID = UUID()
    
    var imageName : String
    var title : String
    var artist : String
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
            // Aggiungi altri attributi se necessario
        }
}
