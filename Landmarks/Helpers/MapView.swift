//
//  MapView.swift
//  Landmarks
//
//  Created by Tafadzwa Chimbindi on 2/25/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // State attribute to establish a source of truth for data in your app that you can modify from more than one view.
    // SwiftUI automatically generates a storage for the variable that persists across updates to the view hierarchy. When you update the value of the state variable, SwiftUI automatically triggers a re-render of the view to reflect the new state.
    var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()
        
    var body: some View {
        // By prefixing a state variable with $, you pass a binding, which is like a reference to the underlying value
        Map(coordinateRegion: $region)
            .onAppear {
            setRegion(coordinate)
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {

            region = MKCoordinateRegion(

                center: coordinate,

                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

            )

        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
