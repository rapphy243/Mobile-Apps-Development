//
//  ContentView.swift
//  Greeting App
//
//  Created by Raphael Abano on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var greeting = "Hello, [name]!"
    var body: some View {
        VStack {
            Text("Greeting App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                .padding()
            Text(greeting)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            TextField("Enter Name", text: $name)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            HStack {
                Button("Say Hello"){
                    greeting = "Hello, \(name)!"
                }
                .padding()
                Button("Say Goodbye"){
                    greeting = "Goodbye, \(name)!"
                }
                .padding()
                Button("Say Aloha"){
                    greeting = "Aloha, \(name)!"
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
