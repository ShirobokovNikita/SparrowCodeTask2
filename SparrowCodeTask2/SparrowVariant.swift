//
//  SparrowVariant.swift
//  SparrowCodeTask2
//
//  Created by Nikita Shirobokov on 14.10.23.
//

import SwiftUI

struct SparrowVariant: View {
    
    @State private var textWidth: CGFloat = 300
    @State private var textHeight: CGFloat = 200
    
    var body: some View {
        VStack {
            Group {
                Text("Марафон ")
                    .font(.body)
                + Text("по SwiftUI ")
                    .font(.body)
                    .foregroundStyle(.secondary)
                + Text("Отцовский пинок")
                .font(.title)
                .foregroundColor(.blue)
                .fontWeight(.bold)
            }
            .frame(width: textWidth, height: 200)
            .border(.red)
            
            Slider(value: $textWidth, in: 100...300)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SparrowVariant()
}
