//
//  storyView.swift
//  Madlibs
//
//  Created by Raphael Abano on 9/20/24.
//

import SwiftUI

struct storyView: View {
    let word : words
    var body: some View {
        NavigationView {
            VStack {
                Text(writeStory())
                    .frame(width: 350, height: 1100)
            }
            .navigationTitle("Story View")
        }
    }
    func writeStory() -> String {
        
        var story = "I walk through the \(word.color) jungle. I take out my \(word.adjective0) canteen. " + "There's a \(word.adjective1) parrot with a \(word.adjective2) \(word.noun0) in his mouth right there in front of me in the \(word.adjective3) trees! "
        story = story + "I gaze at his \(word.adjective2) \(word.noun0). " + "A sudden sound awakes me from my daydream! A panther is \(word.verb0) in front of me! " + "I smell his \(word.adjective4) breath. " + "I remember I have a packet of \(word.noun1) that makes it go into a deep slumber! " + "I \(word.verb1) it away from me in front of the panther." + " Yes he's eating it! I \(word.verb2) away through the \(word.color) jungle. I meet my parents at the tent. Phew! It’s been an exciting day in the jungle."
        return story
    }
}
struct storyViews_Previews: PreviewProvider {
    static var previews: some View {
        storyView(word : words())
    }
}
