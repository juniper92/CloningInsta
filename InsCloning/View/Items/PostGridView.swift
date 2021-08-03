//
//  PostGridView.swift
//  InsCloning
//
//  Created by HI on 2021/08/03.
//


// 여러 뷰들에서 재활용되는 아이템이기 때문에, items 폴더에 생성 후 계속 재활용하기
import SwiftUI

struct PostGridView: View {
    
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0 ..< 10) {_ in
                NavigationLink(
                    destination: FeedView(),
                    label: {
                        Image("whatever")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    })
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
