//
//  SwiftUIView01.swift
//  Multiple Views
//
//  Created by Raphael Abano on 9/17/24.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .padding()
            NavigationLink("Next View", destination: SwiftUIView02(phrase: "This is from the second view"))
        }
        .navigationTitle("Second View")
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Howdy")
    }
}
