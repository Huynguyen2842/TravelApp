//
//  CircleImage.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        SightDetail(sight: modelData.sights[0])
                    .environmentObject(modelData)
    }
}
