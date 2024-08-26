//
//  SaveTheDateApp.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 15/08/2024.
//

import SwiftUI

@main
struct SaveTheDateApp: App {
    
    var body: some Scene {
        WindowGroup {
            //MakeDateView()
            PersonsListView(persons: Person.sampleData, saveAction: {})
        }
    }
}
