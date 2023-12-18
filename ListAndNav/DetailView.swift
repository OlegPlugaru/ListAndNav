//
//  DetailView.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct DetailView: View {
    var photo: ListItem
    @State var showPopup = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(photo.image)
                .resizable()
                .frame(width: 350, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .onTapGesture {
                    showPopup.toggle()
                }
                .sheet(isPresented: $showPopup, content: {
                    PopupView()
                })
            
            Text(photo.title)
                .font(.title)
            
            Text(photo.subtitle)
                .font(.subheadline)
            
            Spacer()
        }
    }
}

#Preview {
    DetailView(photo: photos[0])
}
