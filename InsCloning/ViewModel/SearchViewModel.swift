//
//  SearchViewModel.swift
//  InsCloning
//
//  Created by HI on 2021/08/12.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    /* Firestore : https://peterfriese.dev/swiftui-firebase-codable/ */
    /* MVVM : https://docs.microsoft.com/ko-kr/archive/blogs/msgulfcommunity/understanding-the-basics-of-mvvm-design-pattern */
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            
        }
    }
}
