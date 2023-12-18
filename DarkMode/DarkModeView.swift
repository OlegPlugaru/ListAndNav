//
//  DarkModeView.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct DarkModeView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Color.sky
            
            Circle()
                .frame(width: 300, height: 300)
                .offset(x: 150, y: -350)
                .foregroundColor(colorScheme == .light ? .yellow : .orange)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DarkModeView()
        .preferredColorScheme(.light)
}
