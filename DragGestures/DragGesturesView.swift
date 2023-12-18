//
//  DragGesturesView.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct DragGesturesView: View {
    @State var isDragging = false
    @State var position = CGSize.zero
    
    var body: some View {
        ZStack {
           Color(isDragging ? Color.gray : Color.white)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 250, height: 200)
                .offset(x: position.width, y: position.height)
                .foregroundColor(.blue)
                .animation(.spring, value: position)
                .gesture(
                DragGesture()
                    .onChanged({ value in
                        position = value.translation
                        isDragging = true
                    })
                    .onEnded({ value in
                        position = .zero
                        isDragging = false
                    })
            )
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    DragGesturesView()
}
