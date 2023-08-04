//
//  WelcomeView.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive : Bool = true
    var body: some View {
        ZStack{
            if isWelcomeActive{
                GreetingView(active: $isWelcomeActive)
            } else {
                SightList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
