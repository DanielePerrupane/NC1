//
//  ListView.swift
//  Music
//
//  Created by Daniele Perrupane on 16/11/23.
//

import SwiftUI

struct ListView: View {
    
    var viewModel = StuffViewModel()
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        NavigationView {
            List {
                ForEach(0..<viewModel.stuffs.count, id: \.self) { index in
                    NavigationLink{
                        OthersView(stuff: viewModel.stuffs[index])
                    } label : {
                        
                        VStack{
                            Image(systemName: viewModel.stuffs[index].icon)
                                .aspectRatio(contentMode: .fill)
                                
                                .frame(width: 10, height: 30)
                                .fontWeight(.bold)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.946, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                            
                                
                        }
                            
                            Text(viewModel.stuffs[index].name)
                                .font(.system(size: 20.0))
                                .fontWeight(.semibold)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                .padding(.leading, 10)
                        
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
