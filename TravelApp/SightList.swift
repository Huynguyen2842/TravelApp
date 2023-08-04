//
//  SightList.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    var filteredSights: [Sight] {
        modelData.sights.filter { sight in
               (!showFavoritesOnly || sight.isFavorited)
           }
       }
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach (filteredSights){ sight in
                    NavigationLink {
                        SightDetail(sight: sight)
                    } label: {
                        SightRow(sight: sight)
                    }
                }
            }
            .navigationTitle("Sights")
        }
    }
    
    struct SightList_Previews: PreviewProvider {
        static var previews: some View {
            SightList()
                .environmentObject(ModelData())
        }
    }
}
