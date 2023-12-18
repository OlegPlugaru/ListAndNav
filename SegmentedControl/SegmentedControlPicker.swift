//
//  SegmentedControlPicker.swift
//  ListAndNav
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct SegmentedControlPicker: View {
    @State var selected = 1
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("Picker")) {
                Text("List of 5").tag(1)
                Text("List of 10").tag(2)
            }
            .pickerStyle(.segmented)
            
            if selected == 1 {
                List(1..<6) { item in
                    Text("item \(item)")
                }
            } else {
                List(1..<11) { item in
                    Text("item \(item)")
                }
            }
        }
    }
}

#Preview {
    SegmentedControlPicker()
}
