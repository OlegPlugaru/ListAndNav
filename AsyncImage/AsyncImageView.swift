//
//  AsyncImageView.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct AsyncImageView: View {
    let url = URL(string:
    "https://plus.unsplash.com/premium_photo-1682145730713-34bba6d3d14a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var body: some View {
            List(0 ..< 5) { item in
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
    }
}

#Preview {
    AsyncImageView()
}
