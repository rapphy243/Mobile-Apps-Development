//
//  ContentView.swift
//  Flashlight
//
//  Created by Raphael Abano on 8/22/24.
//

import SwiftUI

struct ContentView: View {
    @State private var lightOn = false
    var body: some View {
        ZStack {
            Color.white
                .opacity(lightOn ? 1 : 0)
            VStack {
                Text("Flashlight")
                    .font(.largeTitle)
                Spacer()
                Toggle("", isOn: $lightOn)
                    .padding()
            }
            .preferredColorScheme(.dark)
        }
    }
}
#Preview {
    ContentView()
}
