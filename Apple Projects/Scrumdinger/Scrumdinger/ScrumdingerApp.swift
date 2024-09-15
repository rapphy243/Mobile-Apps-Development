//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Raphael Abano on 9/12/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)       
        }
    }
}
