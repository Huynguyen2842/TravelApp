//
//  SightRow.swift
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

struct SightRow: View {
    var sight: Sight
    var body: some View {
        HStack{
            sight.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(sight.name)
            
            Spacer()
            
            if sight.isFavorited{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
                
        }
    }
}

struct SightRow_Previews: PreviewProvider {
    static var sights = ModelData().sights
    static var previews: some View {
        Group {
            SightRow(sight: sights[0])
            SightRow(sight: sights[1])
            }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
