//
//  ProfileHeaderView.swift
//  InsCloning
//
//  Created by HI on 2021/08/03.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("whatever")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
            }
        }
    }
}

struct UserStatView {
    var body: some View {
        VStack {
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            
            Text("Followers")
        }
    }
}


struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
