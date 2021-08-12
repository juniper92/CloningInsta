//
//  User.swift
//  InsCloning
//
//  Created by HI on 2021/08/11.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
}
