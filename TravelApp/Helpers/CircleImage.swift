//
//  CircleImage.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//
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
