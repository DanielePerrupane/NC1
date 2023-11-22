//
//  SearchView.swift
//  Music
//
//  Created by Daniele Perrupane on 21/11/23.
//
import SwiftUI


struct SearchView: View {
//    @State private var searchText: String = ""
    var categoryModel = CategoryViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                SearchBar()
                VStack {
                    // Contenuto della vista
                    
                    VStack(alignment: .center) {
                        ForEach(categoryModel.categories.indices) { index in
                            if index % 2 == 0 {
                                HStack(spacing: 12.0) {
                                    NavigationLink(destination: CategoryView(caterogy: categoryModel.categories[index])) {
                                        CategoryView(caterogy: categoryModel.categories[index])
                                    }
                                    if index + 1 < categoryModel.categories.count {
                                        NavigationLink(destination: CategoryView(caterogy: categoryModel.categories[index + 1])) {
                                            CategoryView(caterogy: categoryModel.categories[index + 1])
                                        }
                                    }
                                }
                            }
                        }
                    }
                }.navigationTitle("Search")
                .padding(.horizontal)
            }
            
//            .searchable(text: $searchText) {
//                
//            }
//            .navigationBarTitle("Search")
        }
    }
}


#Preview {
    SearchView()
}
