//
//  ContentView.swift
//  Madlibs
//
//  Created by Raphael Abano on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var word = words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter requested words below")
                HStack {
                    CustomTextFields(placeholder: "Color", variable: $word.color)
                    CustomTextFields(placeholder: "Noun", variable: $word.noun0)
                    CustomTextFields(placeholder: "Noun", variable: $word.noun1)
                }
                HStack {
                    CustomTextFields(placeholder: "Verb", variable: $word.verb0)
                    CustomTextFields(placeholder: "Verb", variable: $word.verb1)
                    CustomTextFields(placeholder: "Verb", variable: $word.verb2)
                    
                }
                HStack {
                    CustomTextFields(placeholder: "Adjective", variable: $word.adjective0)
                    CustomTextFields(placeholder: "Adjective", variable: $word.adjective1)
                    CustomTextFields(placeholder: "Adjective", variable: $word.adjective2)
                }
                HStack {
                    CustomTextFields(placeholder: "Adjective", variable: $word.adjective3)
                    CustomTextFields(placeholder: "Adjective", variable: $word.adjective4)
                }
                NavigationLink("Next", destination: storyView(word: word))
            }
            .navigationTitle("Initial View")
        }
        Spacer()
    }
}

struct words {
    var color = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    var adjective4 = ""
    
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    
    var verb0 = ""
    var verb1 = ""
    var verb2 = ""
    
}

struct CustomTextFields: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
#Preview {
    ContentView()
}
