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
        Text("Please enter requested words below")
            .padding()
        VStack {
            HStack {
                CustomTextFields(placeholder: "Noun", variable: $word.noun0)
                CustomTextFields(placeholder: "Noun", variable: $word.noun1)
                CustomTextFields(placeholder: "Noun", variable: $word.noun2)
            }
            HStack {
                CustomTextFields(placeholder: "Noun", variable: $word.noun3)
                CustomTextFields(placeholder: "Verb", variable: $word.verb0)
                CustomTextFields(placeholder: "Verb", variable: $word.verb1)
            }
            HStack {
                CustomTextFields(placeholder: "Verb", variable: $word.verb2)
                CustomTextFields(placeholder: "Verb", variable: $word.verb3)
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective0)
            }
            HStack {
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective1)
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective2)
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective3)
            }
            HStack {
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective4)
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective5)
                CustomTextFields(placeholder: "Adjective", variable: $word.adjective6)
            }
            Spacer()
            NavigationLink("Next", destination: storyView(word: word))
        }
        .navigationTitle("Word Play")
    }
}

struct words {
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    var adjective4 = ""
    var adjective5 = ""
    var adjective6 = ""
    
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var verb0 = ""
    var verb1 = ""
    var verb2 = ""
    var verb3 = ""
    
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
