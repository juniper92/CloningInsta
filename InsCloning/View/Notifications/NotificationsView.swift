//
//  NotificationsView.swift
//  InsCloning
//
//  Created by HI on 2021/08/02.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach( 0 ..< 20 ) { _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
