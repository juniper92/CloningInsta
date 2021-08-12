//
//  SearchView.swift
//  InsCloning
//
//  Created by HI on 2021/08/02.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    // SearchMode 에 따라 UserListView / PostGridView 각각 출력이 바뀌게 
    @State var inSearchMode = false
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {

        ScrollView {
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            
            // 중첩 출력 
            ZStack {
                if inSearchMode {
                    UserListView(viewModel: viewModel)
                } else {
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
