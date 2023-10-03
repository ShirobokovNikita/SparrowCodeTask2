//
//  ContentView.swift
//  SparrowCodeTask2
//
//  Created by Nikita Shirobokov on 03.10.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var containerWidth: CGFloat = 300 // Начальная ширина контейнера
    private let title = "«Отцовский Пинок»"
    private let subTitle = "Марафон по SwiftUI"
    
    var body: some View {
        VStack {
            VStack {
                Text("Марафон ") + Text("по ").bold() + Text("SwiftUI ").bold() +
                Text(title).foregroundColor(.blue).font(.title)
            }
            .frame(width: containerWidth, height: 300, alignment: .center)
            .border(Color.red)
            
            Slider(value: $containerWidth, in: 100...300, step: 1)
                .padding()
            Text("\(Int(containerWidth))")
        }
    }
}

#Preview {
    ContentView()
}
