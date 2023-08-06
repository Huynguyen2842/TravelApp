//
//  SightList.swift
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
            .navigationTitle("Best Sights to ✈️")
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
