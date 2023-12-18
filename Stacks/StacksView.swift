//
//  StacksView.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, Color.mint]), startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.purple)
                    Image(systemName: "tortoise")
                        .font(.system(size: 50, weight: .bold))
                }
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Hi, I'm the title")
                            .font(.system(size: 20, weight: .bold))
                        
                        Text("subtitle".uppercased())
                            .font(.system(size: 15,weight: .light))
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "figure.walk")
                            .font(.system(size: 30, weight: .bold))
                        Text("Frank")
                            .font(.caption)
                    }
                }
                .padding()
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    StacksView()
}
