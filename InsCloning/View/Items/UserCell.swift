//
//  UserCell.swift
//  InsCloning
//
//  Created by HI on 2021/08/03.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("whatever")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // VStack -> username, fullname
            VStack(alignment: .leading) {
                Text("whatever")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("This is my name")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
