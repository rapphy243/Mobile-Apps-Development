//
//  ContentView.swift
//  Greeting App
//
//  Created by Raphael Abano on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var greeting = ""
    var body: some View {
        VStack {
            Text("Greeting App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                .padding()
            
            TextField("Enter Name", text: $name)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Button("Say Hello"){
                greeting = "Hello, \(name)!"
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
