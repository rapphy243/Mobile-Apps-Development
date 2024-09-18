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
        VStack {
            HStack {
                CustomTextFields(placeholder: "Noun", variable: $word.noun0)
            }
        }
    }
}

struct words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    var noun4 = ""
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
