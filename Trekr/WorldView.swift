//
//  WorldView.swift
//  Trekr
//
//  Created by Carlos Delgado on 2021-05-07.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center:
            CLLocationCoordinate2D(latitude: 44.4056, longitude: 8.9463),
        span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
        )
    var body: some View {
       Map(coordinateRegion: $region,
           annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate:
                CLLocationCoordinate2D(latitude:
                location.latitude, longitude:
                location.longitude)) {
                NavigationLink(destination:
                                ContentView(location:  location)){
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 40, height: 20)
                    .shadow(radius: 3)
                }
          }
       }
        .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
