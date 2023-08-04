//
//  GreetingView.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            Image("travel app")
                .resizable()
                .ignoresSafeArea()
            VStack (spacing: 20){
                Image("rmit-logo-white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                Text("Welcome")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("""
                     Go, Find, and Explore the greatest sights of the world !!!
                     """)
                .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Spacer()
                
                ZStack{
                    Image("AppLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                }
                
                Spacer()

                Button {
                    // isWelcomeActive = false
                    active = false;
                } label: {
                    Capsule()
                        .fill(.white.opacity(0.6))
                        .frame(height: 80)
                        .padding(.horizontal, 40)
                        .overlay(
                        Text("Let's Started ✈️")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(.title2))
                        )
                
                }
                Spacer()
            }
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
