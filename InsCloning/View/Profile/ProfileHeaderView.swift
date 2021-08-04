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
                    .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 16) {
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 3, title: "Following")
                }.padding(.trailing, 32)
                
            }
            
            Text("Guess Who?")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            Text("It's gonna be a profile message")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()

                ProfileActionButtonView()
                
                Spacer()
            }.padding(.top)
        }
    }
}


struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
