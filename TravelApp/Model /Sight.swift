//
//  Sight.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import Foundation
import SwiftUI
import CoreLocation


struct Sight: Identifiable {
    var id = UUID()
    var name: String
    var besttime: String
    var country: String
    var description: String
    var isFavorited: Bool

    var imageName: String
    var image: Image {
        Image(imageName)
    }

    var locationCoordinate: CLLocationCoordinate2D
}
