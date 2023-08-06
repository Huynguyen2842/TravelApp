//
//  WelcomeView.swift
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

struct WelcomeView: View {
    @StateObject private var modelData = ModelData()
    @State var isWelcomeActive : Bool = true
    var body: some View {
        ZStack{
            if isWelcomeActive{
                GreetingView(active: $isWelcomeActive)
            } else {
                SightList()
                    .environmentObject(modelData)

            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(ModelData())
    }
}
