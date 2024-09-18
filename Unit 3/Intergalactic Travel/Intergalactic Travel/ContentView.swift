//
//  ContentView.swift
//  Intergalactic Travel
//
//  Created by Raphael Abano on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                StarLink(name: "Blue Star")
                .padding()
                StarLink(name: "Red Dwarf")
                .foregroundColor(.red)
            }
            .navigationTitle("Intergalactic Travel")
        }
    }
}
struct StarLink: View {
    let name: String
    var body: some View {
        NavigationLink("Travel to \(name)") {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    ContentView()
}
