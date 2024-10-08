//
//  ContentView.swift
//  Loops Challenge
//
//  Created by Margaret Hamilton on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var values = [Int]()
    @State private var maximum = -1
    @State private var sum = -1
    @State private var index = -1
    @State private var display = ""
    @State private var message = ""
    @State private var check = ""
    var body: some View {
        VStack {
            Group {
                Text("Loops Challenge")
                    .font(.title)
                Button("Randomize Values") {
                    randomizeValues()
                }
                .padding()
                Text("Values contains\n\(values.description)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            Group {
                Button("Test MVP") {
                    display = ""
                    
                    /***************************************************
                     * MVP
                     *
                     * Replace the proper loop range in the for-loop below
                     ***************************************************/
                    for i in 0..<values.count {
                        display += "\(values[i]) "
                    }
                    
                    testMVP()
                }
                .padding()
                Button("Test Stretch 1") {
                    display = ""
                    
                    /***************************************************
                     * Stretch 1
                     *
                     * Similar to the MVP, display the numbers in the list,
                     * each separated by a comma and a space
                     * (except for the last number)
                     ***************************************************/
                    for value in values {
                        display += "\(value)"
                        if values.last != value {
                            display += ", "
                        }
                    }
                    
                    
                    testStretch1()
                }
                .padding()
                Button("Test Stretch 2") {
                    maximum = -1
                    
                    /***************************************************
                     * Stretch 2
                     *
                     * Loop through all values and find the largest value
                     * Store the largest value in the variable maximum (already created)
                     ***************************************************/
                    for value in values {
                        if value > maximum {
                            maximum = value
                        }
                    }
                    
                    
                    if maximum != -1 {
                        display = "The maximum is \(maximum)"
                    }
                    testStretch2()
                }
                .padding()
                Button("Test Stretch 3") {
                    
                    /***************************************************
                     * Stretch 3
                     *
                     * Loop through all values and add them up
                     * Store the total in the variable sum (already created)
                     ***************************************************/
                    sum = 0
                    
                    for value in values {
                        sum += value
                    }
                    
                    if sum != -1 {
                        display = "The sum of values is \(sum)"
                    }
                    testStretch3()
                }
                .padding()
                Button("Test Stretch 4") {
                    
                    /***************************************************
                     * Stretch 4
                     *
                     * Loop through all values and find the location (index)
                     * of the smallest value.
                     * Store the index in the variable index (already created)
                     ***************************************************/
                    var smallestValue = values[0]
                    index = 0
                    for i in 0..<values.count {
                        if values[i] < smallestValue {
                            smallestValue = values[i]
                            index = i
                        }
                    }
                    
                    if index != -1 {
                        display = "The index of the smallest value is \(index)"
                    }
                    testStretch4()
                }
                .padding()
                if display.count > 0 {
                    Text("display")
                }
                Text(display)
                    .font(.headline)
                Text(message)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
        }
        .onAppear {
            randomizeValues()
        }
    }
    
    func randomizeValues() {
        display = ""
        message = ""
        values.removeAll()
        var value = Int.random(in: 0...9)
        for _ in 0..<Int.random(in: 5...9) {
            while values.contains(value) {
                value = Int.random(in: 0...9)
            }
            values.append(value)
        }
    }
    
    func testMVP() {
        check = ""
        for i in 0..<values.count {
            check += "\(values[i]) "
        }
        if display == "" {
            message = "Sorry, you have not completed the MVP"
        }
        else if display == check {
            message = "MVP correct"
        }
        else {
            message = "MVP incorrect\nshould be: \(check)"
        }
    }
    
    func testStretch1() {
        check = ""
        for i in 0..<(values.count - 1) {
            check += "\(values[i]), "
        }
        check += "\(values.last!)"
        if display == "" {
            message = "Sorry, you have not completed Stretch 1"
        }
        else if display == check {
            message = "Stretch 1 correct"
        }
        else {
            message = "Stretch 1 incorrect\nshould be: \(check)"
        }
    }
    
    func testStretch2() {
        check = "0"
        for i in 0..<values.count {
            if values[i] > Int(check)! {
                check = "\(values[i])"
            }
        }
        if maximum == -1 {
            message = "Sorry, you have not completed Stretch 2"
        }
        else if maximum == Int(check) {
            message = "Stretch 2 correct"
        }
        else {
            message = "Stretch 2 incorrect\nshould be: \(check)"
        }
        
    }
    
    func testStretch3() {
        check = "0"
        for i in 0..<values.count {
            check = String(Int(check)! + values[i])
        }
        if sum == -1 {
            message = "Sorry, you have not completed Stretch 3"
        }
        else if sum == Int(check) {
            message = "Stretch 3 correct"
        }
        else {
            message = "Stretch 3 incorrect\nshould be: \(check)"
        }
    }
    
    func testStretch4() {
        check = "0"
        for i in 0..<values.count {
            if values[i] < values[Int(check)!] {
                check = "\(i)"
            }
        }
        if index == -1 {
            message = "Sorry, you have not completed Stretch 4"
        }
        else if index == Int(check) {
            message = "Stretch 4 correct"
        }
        else {
            message = "Stretch 4 incorrect\nshould be: \(check)"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

