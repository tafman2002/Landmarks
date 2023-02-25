//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tafadzwa Chimbindi on 2/25/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            // Creates a list of Landmark objects
               List(landmarks, id: \.id) { landmark in
                   // For each Landmark, create a NavigationLink that, when tapped, opens a new LandmarkDetail view
                   NavigationLink {
                       LandmarkDetail(landmark: landmark) // The LandmarkDetail view is created with the landmark parameter
                   } label: {
                       LandmarkRow(landmark: landmark) // The LandmarkRow view is used as the visual representation of the Landmark in the list
                   }
               }
               // Sets the title of the navigation bar
               .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
