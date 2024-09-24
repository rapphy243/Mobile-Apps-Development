//
//  ContentView.swift
//  Final Grade Caluculator
//
//  Created by Raphael Abano on 9/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentGradeTextField = ""
    @State private var finalWeightTextField = ""
    @State private var desiredGrade = 0.0
    @State private var requiredGrade = 0.0
    var body: some View {
        VStack {
            VStack {
                CustomText(textstr: "Final Grade Calculator")
                CustomTextField(placeholder: "Current Semester Grade", variable: $currentGradeTextField)
                CustomTextField(placeholder: "Final Weight (%)", variable: $finalWeightTextField)
                HStack {
                    Picker("", selection: $desiredGrade){
                        Text("A").tag(90.0)
                        Text("B").tag(80.0)
                        Text("C").tag(70.0)
                        Text("D").tag(60.0)
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 350, height: 50)
                }
                Text("Required Grade on Final")
                CustomText(textstr: String(format: "%.2f", requiredGrade))
            }
            .onChange(of: desiredGrade) { oldValue, newValue in
                caluclateGrade()
            }
            Spacer()
        }
        .background(requiredGrade > 100 ? Color.red : Color.green.opacity(requiredGrade > 0 ? 1.0 : 0.0))
    }
    func caluclateGrade() {
        if let currentGrade = Double(currentGradeTextField){
            if let finalWeight = Double(finalWeightTextField) {
                if finalWeight < 100 && finalWeight > 0 {
                    let finalPercentage = finalWeight / 100.0
                    requiredGrade = max(0.0,(desiredGrade - (currentGrade * (1.0 - finalPercentage))) / finalPercentage)
                }
            }
            else {
                requiredGrade = 0.0
            }
        
        }
        else {
            requiredGrade = 0.0
        }
    }
}

#Preview {
    ContentView()
}



struct CustomText: View {
    let textstr: String
    var body: some View {
        VStack {
            Text(textstr)
                .font(.title)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30)
            .font(.body)
            .padding()
    }
}
