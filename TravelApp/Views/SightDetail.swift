//
//  SightDetail.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightDetail: View {
    @EnvironmentObject var modelData: ModelData
    var sight: Sight
    var SightIndex: Int {
        modelData.sights.firstIndex(where: {$0.id == sight.id })!
    }
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -180)
                .padding(.bottom, -180)
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
        SightDetail(sight: modelData.sights[0])
                    .environmentObject(modelData)
    }
}
