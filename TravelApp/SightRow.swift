//
//  SightRow.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightRow: View {
    var sight: Sight
    var body: some View {
        HStack{
            sight.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(sight.name)
        }
    }
}

struct SightRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SightRow(sight: sights[0])
                .previewLayout(.fixed(width: 300, height: 70))
            SightRow(sight: sights[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
