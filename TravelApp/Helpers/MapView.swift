/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2023B
 Assessment: Assignment 1
 Author: Nguyen Giang Huy
 ID: Your student id (e.g. 1234567)
 Created  date: 04/08/2023
 Last modified: 06/08/2023
 Acknowledgement: ContactList app on github, as well as some other website on the internet in order to get the information for each sight
*/

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    @State private var annotations: [Annotation] = []

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
            MapMarker(coordinate: annotation.coordinate)
        }
        .onAppear {
            setRegion(coordinate)
            addAnnotation(coordinate)
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    private func addAnnotation(_ coordinate: CLLocationCoordinate2D) {
        let annotation = Annotation(coordinate: coordinate)
        annotations.append(annotation)
    }
}

struct Annotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 20.910051, longitude: 107.183899))
    }
}
