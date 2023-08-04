//
//  SightDetail.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -180)
                .padding(.bottom, -180)
            VStack(alignment: .leading) {
                        Text("Turtle Rock")
                            .font(.title)
                        HStack {
                            Text("Joshua Tree National Park")
                                .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                        }
                
                        Divider()
                        Text("About ")
                    .font(.title2)
                    Text("Description")
                    }
            .padding()
            
            Spacer()
        }
    }
}

struct SightDetail_Previews: PreviewProvider {
    static var previews: some View {
        SightDetail()
    }
}
