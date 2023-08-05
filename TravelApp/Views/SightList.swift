//
//  SightList.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct SightList: View {
    @AppStorage("isDrakMode") private var isDark = false
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var searchTerm = ""
    var filteredSights: [Sight] {
        modelData.sights.filter { sight in
            (!showFavoritesOnly || sight.isFavorited) &&
                        (searchTerm.isEmpty || sight.name.lowercased().contains(searchTerm.lowercased()))
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
            .searchable(text: $searchTerm, prompt: "Search Sights")
            .navigationTitle("Sights")
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                    Button(action: {isDark.toggle()}, label: {isDark ? Label("Dark", systemImage: "sun.max.fill")
                        : Label("Dark", systemImage: "moon.fill")
                    })
                }
            }
        }
        .environment(\.colorScheme, isDark ? .dark: .light)
    }
    
    struct SightList_Previews: PreviewProvider {
        static var previews: some View {
            SightList()
                .environmentObject(ModelData())
        }
    }
}
