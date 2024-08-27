//
//  ContentView.swift
//  Multiply
//
//  Created by Raphael Abano on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberTextField = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Display a Number")
                .font(.title).bold()
            TextField("Enter a Number", text: $numberTextField)
                .font(.title)
                .multilineTextAlignment(.center)
                .onChange(of: numberTextField){oldValue, newValue in 
                    if let value = Int(newValue){
                        if (value % 2 == 0)
                        {
                            imageName = "Even"
                        }
                        else
                        {
                            imageName = "Odd"
                        }
                    }
                    else {
                        numberTextField = ""
                        imageName = ""
                    }
                }
                .padding()
            Text(numberTextField)
                .font(.title).bold()
                .padding()
            Image(imageName)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
