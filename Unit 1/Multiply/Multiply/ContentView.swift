//
//  ContentView.swift
//  Multiply
//
//  Created by Raphael Abano on 8/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var field1 = ""
    @State private var field2 = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                .padding()
            TextField("Enter a Number", text: $field1)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Text("X")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            TextField("Enter a Number", text: $field2)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .font(.body)
                .padding()
            Button("Calculate"){
                if let num1 = Int(field1){
                    if let num2 = Int(field2){
                        calculation = num1 * num2
                        if (calculation == 64)
                        {
                            imageName = "macintosh"
                        }
                        else if (calculation % 2 == 0)
                        {
                            imageName = "jobs"
                        }
                        else
                        {
                            imageName = "apple"
                        }
                    }
                }
            }
            Text("\(calculation)")
            .padding()
            Image(imageName)
                .resizable()
                .frame(width: 100,height: 100)
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
