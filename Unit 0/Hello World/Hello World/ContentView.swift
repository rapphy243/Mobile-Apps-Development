//
//  ContentView.swift
//  Hello World
//
//  Created by Raphael Abano on 8/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.white
    @State private var date = Date()
    @State private var number = 0
    @State private var celsius = 0.0
    var body: some View {
        VStack {
            Group{
                RoundedRectangle(cornerRadius: 30)
                    .fill(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Label("Square Root", systemImage: "x.squareroot")
                    .padding()
                Button("Click Me"){
                }
                .padding()
                Image("dog")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Link("Barrington High School", destination: URL( string: "https://bhs.barrington220.org")!)
                    .padding()
                }
            Group {
                ColorPicker("Pick a Color", selection: $color)
                    .frame(width: 150, height: 50)
                DatePicker("Pick a date", selection: $date)
                    .frame(width: 320, height: 50)
                HStack{
                    Text("Pick a Number")
                    Picker("", selection: $number){
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 200, height: 100)
                    .padding()
                }
                Slider(value: $celsius, in: -100...100)
                Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
            }
        }
        .background(color)
    }
}

#Preview {
    ContentView()
}
