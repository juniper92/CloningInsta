//
//  FeedCell.swift
//  InsCloning
//
//  Created by HI on 2021/08/02.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // user info
            HStack {
                Image("feedimage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding([.leading, .bottom], 8)
            
            
            // post image
            Image("feedimage")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // action buttons
            HStack(spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
            }.foregroundColor(.black)
            .padding(.leading)
            
            // caption
            
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            HStack {
                Text("batman").font(.system(size: 14, weight: .semibold)) + Text("blblblblbblalblalbalblablablablablablablablablablablablablablablalbalbalbalbalbalbalbalbalblablablablablablab.").font(.system(size: 15))
            }.padding(.horizontal, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 2)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
