//
//  SightDetail.swift
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

struct SightDetail: View {
    @EnvironmentObject var modelData: ModelData
    var sight: Sight
    var SightIndex: Int {
        modelData.sights.firstIndex(where: {$0.id == sight.id })!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: sight.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: sight.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(sight.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.sights[SightIndex].isFavorited)
                }
                            .font(.title)
                        HStack {
                            HStack{
                                Text("Best Time:")
                                    .fontWeight(.bold)
                                    .font(.subheadline)
                                Text(sight.besttime)
                                    .font(.subheadline)
                            }
                            Spacer()
                            Text(sight.country)
                                .font(.subheadline)
                        }
                
                        Divider()
                        Text("About \(sight.name)")
                    .font(.title2)
                Text(sight.description)
                    }
            .padding()
            
            Spacer()
        }
    }
}

struct SightDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        SightDetail(sight: modelData.sights[3])
                    .environmentObject(modelData)
    }
}
