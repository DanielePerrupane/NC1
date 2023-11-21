//
//  CategoryView.swift
//  Music
//
//  Created by Daniele Perrupane on 21/11/23.
//

import SwiftUI
struct CategoryView: View {
    
    var caterogy : Cat
    
    var body: some View {
        
        
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 180, height: 120)
                .background(
                    Image(caterogy.image)
                        .resizable()
                        .frame(width: 180, height: 120)
                        .clipped()
                )
                .cornerRadius(10)
                .shadow(radius: 5)

            VStack {
                Spacer()
                Text(caterogy.name)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3) // Imposta il numero massimo di linee
                    .padding(.trailing)
                    .offset(x:10,y:-7)
                
            }
        }
    }
}

#Preview {
    CategoryView(caterogy: Cat(name: "Apple Music Artist of the Year 2023", image: "Image5"))
}
