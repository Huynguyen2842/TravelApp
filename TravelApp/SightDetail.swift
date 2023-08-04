//
//  SightDetail.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightDetail: View {
    let sight: Sight
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -180)
                .padding(.bottom, -180)
            VStack(alignment: .leading) {
                HStack{
                    Text(sight.name)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
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
                        Text("About")
                    .font(.title2)
                Text(sight.description)
                    }
            .padding()
            
            Spacer()
        }
    }
}

struct SightDetail_Previews: PreviewProvider {
    static var previews: some View {
        SightDetail(sight: sights[0])
    }
}
