//
//  InsCloningApp.swift
//  InsCloning
//
//  Created by HI on 2021/08/02.
//

import SwiftUI
import Firebase

@main
struct InsCloningApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LoginView()
        }
    }
}
