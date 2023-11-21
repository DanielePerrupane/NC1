//
//  SearchView.swift
//  Music
//
//  Created by Daniele Perrupane on 21/11/23.
//

import SwiftUI
import UIKit

struct SearchView: View {
    
    //let searchBar = UISearchBar()
    var categoryModel = CategoryViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Browse Categories")
                    .fontWeight(.heavy)
                    .font(.title3)
                VStack() {
                    ForEach(categoryModel.categories.indices) {
                        index in
                        if index % 2 == 0{
                            HStack(spacing:12.0){
                                NavigationLink(destination : CategoryView(caterogy: categoryModel.categories[index])){
                                    CategoryView(caterogy: categoryModel.categories[index])
                                }
                                if index + 1 < categoryModel.categories.count {
                                    NavigationLink(destination : CategoryView(caterogy: categoryModel.categories[index+1])){
                                        CategoryView(caterogy: categoryModel.categories[index+1])
                                    }
                                }
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
