//
//  SwiftUIView01.swift
//  Multiple Views
//
//  Created by Raphael Abano on 9/17/24.
//

import SwiftUI

struct SwiftUIView03: View {
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .padding()
        }
        .navigationTitle("Fourth View")
    }
}

struct SwiftUIView03_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView03(phrase: "Howdy")
    }
}
