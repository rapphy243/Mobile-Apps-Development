//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Raphael Abano on 10/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var letter = ""
    @State private var counter = 0
    @State private var selectedLetter = ["", "", ""]
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var body: some View {
        VStack {
            Text("Three Letter Word")
                .font(.title).bold()
                .padding()
            Text("Tap the gray box to change the letter")
            CustomLetterBox(color: .gray, text: letter)
                .onTapGesture {
                    let position = alphabet.index(alphabet.startIndex, offsetBy: counter)
                    letter = String(alphabet[position])
                    counter += 1
                    if counter == alphabet.count {
                        counter = 0
                    }
                }
            Text("Tap a red box to select that letter")
            HStack {
                ForEach(0..<3) {index in
                    CustomLetterBox(color: .red, text: selectedLetter[index])
                        .onTapGesture {
                            selectedLetter[index] = letter
                        }
                }
            }
        }
    }
}

struct CustomLetterBox: View {
    let color : Color
    let text : String
    var body: some View {
        ZStack {
            color
            Text(text)
                .font(.system(size: 90))
                .fontWeight(.heavy)
        }
        .frame(width: 120, height: 120)
    }
}

#Preview {
    ContentView()
}
