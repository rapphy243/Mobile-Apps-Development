//
//  storyView.swift
//  Madlibs
//
//  Created by Raphael Abano on 9/20/24.
//

import SwiftUI

struct storyView: View {
    @State var word: words
    var body: some View {
        Text(writeStory())
    }
}
struct storyViews_Previews: PreviewProvider {
    static var previews: some View {
        storyView(word: words())
    }
}
func writeStory() -> String {
    return "I walk through the color jungle. I take out my \(word.adjective0) canteen. " + "There's a \(word.adjective1) parrot with a \(word.adjective2) (noun) in his mouth right there in front of me in the (adjective) trees!"
}
