//
//  ContentView.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(photos) { photo in
                NavigationLink(destination: DetailView(photo: photo)) {
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("\(photo.title)")
                                .font(.system(size: 18, weight: .bold))
                            Text("\(photo.subtitle)")
                        }
                        Spacer()
                        Image("\(photo.image)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                            .clipped()
                    }
                }
            }
            .navigationBarTitle("Photos")
        }
    }
}

#Preview {
    ContentView()
}

struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
}

var photos = [
    ListItem(title: "City", subtitle: "What a view", image: "city"),
    ListItem(title: "Code", subtitle: "Nice wallpaper", image: "code"),
    ListItem(title: "Sky", subtitle: "Just amazing view", image: "sky"),
    ListItem(title: "Bridje", subtitle: "Place that i want to visit", image: "bridge"),
    ListItem(title: "Dream", subtitle: "San Francisco...", image: "dream"),
]
