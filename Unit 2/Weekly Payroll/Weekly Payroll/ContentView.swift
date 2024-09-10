//
//  ContentView.swift
//  Weekly Payroll
//
//  Created by Raphael Abano on 9/9/24.
//

import SwiftUI
struct ContentView: View {
    @State private var hourlyWageTextField = ""
    @State private var hoursWorkedTextField = ""
    @State private var pay = 0.0
    var body: some View {
        VStack {
            CustomText(textstr: "Weekly Payroll")
            CustomTextField(placeholder: "Hourly Wage", variable: $hourlyWageTextField)
            CustomTextField(placeholder: "Hours Worked", variable: $hoursWorkedTextField)
            Button("Calculate") {
                if let wage = Double(hourlyWageTextField){
                    if let hours = Double(hoursWorkedTextField){
                        pay = calculateGrossPay(hourlyWage: wage, hoursWorked: hours)
                    }
                }
            }
            .padding()
            CustomText(textstr: "Gross Pay")
            CustomText(textstr: "$" + String(format: "%.2f", pay))
            Spacer()
        }
    }
}
    
#Preview {
    ContentView()
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

struct CustomText: View {
    let textstr: String
    var body: some View {
        VStack {
            Text(textstr)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
    
}

func calculateGrossPay(hourlyWage: Double, hoursWorked: Double) -> Double {
    var wage = 0.0
    if hoursWorked > 40
    {
        wage = (hoursWorked - 40) * (hourlyWage * 1.5)
        wage = wage + (40 * hourlyWage)
        return wage;
    }
    else
    {
        wage = hoursWorked * hourlyWage
        return wage
    }
}
