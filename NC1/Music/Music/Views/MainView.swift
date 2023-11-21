//
//  TabBar.swift
//  Pinterest-UI
//
//  Created by manuel on 17/11/23.
//
import SwiftUI

struct MainView: View {
    @State private var selectedTab: Int = 0 // Add a state variable to track the selected tab
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Text("Listen Now")
                .tabItem {
                    Text("Listen Now")
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.bottom, -3)
                }
                .tag(0) // Assign a tag to each tab
            
            Text("Browse")
                .tabItem {
                    Text("Browse")
                    Image(systemName: "squareshape.split.2x2")
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 101.55173, height: 111.70703)
                        .padding(.bottom, -5)
                }
                .tag(1)
            
            Text("Radio")
                .tabItem {
                    Text("Radio")
                    Image(systemName: "dot.radiowaves.left.and.right")
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.bottom, -5)
                }
                .tag(2)
            
            LibraryView()
                .tabItem {
                    HStack(alignment: .bottom) {
                        Image(systemName: "square.stack.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red) // Set the color of square.stack.fill
                        
                        Image(systemName: "music.note")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white) // Set the color of music.note
                            .offset(y: -5) // Adjust the offset to position music.note above square.stack.fill
                    }
                    .padding(.bottom, -5)
                    Text("Library")
                }
                .tag(3)





            
            Text("Search")
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(.bottom, -5)
                }
                .tag(4)
            
        }
        .accentColor(Color.red)
//        .onAppear(){
//            UITabBar.appearance().backgroundColor = .white
//        }
        
        .onChange(of: selectedTab) { _ in
            UITabBar.appearance().unselectedItemTintColor = UIColor.gray
            UITabBar.appearance().tintColor = UIColor.red


        }
    }
    
}


#Preview {
    MainView()
}
