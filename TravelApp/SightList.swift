//
//  SightList.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightList: View {
    var body: some View {
        NavigationView {
            List(sights) {
                sight in
                NavigationLink {
                    SightDetail(sight: sight)
                } label: {
                    SightRow(sight: sight)
                }
            }
            .navigationTitle("Sights")
        }
    }
    
    struct SightList_Previews: PreviewProvider {
        static var previews: some View {
            SightList()
        }
    }
}
