//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Tafadzwa Chimbindi on 2/25/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            // Use the @StateObject attribute to initialize a model object for a given property
            // only once during the life time of the app. This is true when you use the attribute
            // in an app instance, as shown here, as well as when you use it in a view.
            ContentView()
                .environmentObject(modelData)
        }
    }
}
