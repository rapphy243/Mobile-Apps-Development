//
//  ContentView.swift
//  Multiple Views
//
//  Created by Raphael Abano on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This is where everything starts")
                    .padding()
                NavigationLink("Next View", destination: SwiftUIView01(phrase: "This is from the first view"))
            }
            .navigationTitle("Initial View")
        }
    }
}

#Preview {
    ContentView()
}
