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
        
        
        ScrollView {
            VStack{
                
                ForEach(0..<viewModel.stuffs.count, id: \.self) { index in
                    NavigationLink{
                        OthersView(stuff: viewModel.stuffs[index])
                    } label : {
                        HStack(alignment: .bottom, spacing: 0) {
                            Image(systemName: viewModel.stuffs[index].icon)
                                .fontWeight(.bold)
                                .frame(width: 30, height: 22)
                                .foregroundColor(Color(hue: 0.946, saturation: 1.0, brightness: 1.0))
                            Text(viewModel.stuffs[index].name)
                                .font(.system(size: 20.0))
                                .fontWeight(.semibold)
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                                .padding(.leading, 10)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal, 19)
                        .padding(.vertical, 0)
                        .frame(width: 393, alignment: .topLeading)
                    }
                    Divider()
                        .padding(.leading,60.0)
                }
            }
            .listStyle(.plain)
            RecentlyView()
                .padding(.top,10.0)
        }
    }
}

#Preview {
    ListView()
}
