//
//  ContentView.swift
//  Functions Challenge
//
//  Created by Ida Lovelace on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    @State private var myText = ""
    @State private var sliderValue = 0.0
    var body: some View {
        VStack {
            Text("Functions Challenge")
                .padding()
            Slider(value: $sliderValue, in: 0...6)
            Text(myText)
                .font(.title)
                .padding()
            Spacer()
        }
        .onChange(of: sliderValue) { newValue in
            switch sliderValue {
            case 0..<1:
                /***************************************************
                 * MVP
                 ***************************************************/
                displayMVP()
                break
            case 1..<2:
                //Uncomment the line below for Stretch 1
                myText = returnAString()
                break
            case 2..<3:
                //Uncomment the line below for Stretch 2
                myText = createSentence(language: "Swift")
                break
            case 3..<4:
                //Uncomment the line below for Stretch 3
                myText = createFruitLovingSentence(fruit0: "apples", fruit1: "bananas")
                break
            case 4..<5:
                //Uncomment the two lines below for Stretch 4
                let sentence = "Here is my sentence"
                myText = "\"\(sentence)\" has \(countCharacters(sentence: sentence)) characters"
                break
            case 5..<6:
                //Uncomment the two lines below for Stretch 5
                let sentence = "Here is my sentence"
                myText = "\"\(sentence)\" has \(countVowels(sentence: sentence)) vowels"
                break
            default:
                break
            }
        }
    }
    
    func displayMVP() {
        myText = "MVP Completed"
    }
    
    /***************************************************
     * Stretch 1
     ***************************************************/
    func returnAString() -> String {
        return "Stretch 1 Complete"
    }
    
    /***************************************************
     * Stretch 2
     ***************************************************/
    func createSentence(language: String) -> String {
        return "I love programming with \(language)"
    }
    
    /***************************************************
     * Stretch 3
     ***************************************************/
    func createFruitLovingSentence(fruit0: String, fruit1: String) -> String {
        return "I love \(fruit0) and \(fruit1)"
    }
    
    /***************************************************
     * Stretch 4
     ***************************************************/
    func countCharacters(sentence: String) -> Int {
        
        return sentence.count
    }
    
    /***************************************************
     * Stretch 5
     ***************************************************/
    func countVowels(sentence: String) -> Int {
        let vowels = "aeiouy"
        var vowelCount = 0
        for letter in sentence.lowercased() {
            if vowels.contains(letter)
            {
                vowelCount += 1
            }
        }
        return vowelCount
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
