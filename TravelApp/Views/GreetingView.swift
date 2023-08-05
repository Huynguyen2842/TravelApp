//
//  GreetingView.swift
//  TravelApp
//
//  Created by Nguyen Giang Huy on 04/08/2023.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    @State var showInfo = false // add this state variable to control the pop-up view
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
                    .font(Font.custom("Didot", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("""
                     Let's discover the greatest sights of the world !!!
                     """)
                    .font(.title)
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
                        .fill(.black.opacity(0.5))
                        .frame(height: 80)
                        .padding(.horizontal, 40)
                        .overlay(
                        Text("Get Started")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(.title2))
                        )
                
                }
                Spacer()
                
                Button {showInfo.toggle()} label: {
                                   Image(systemName: "info.circle.fill") // use a system image for the info icon
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 35, height: 35) // adjust the size of the icon
                                       .foregroundColor(.black.opacity(0.55)) // change the color of the icon
                                       .padding(.leading, 300) // add some padding around the icon
                               }
            }
            if showInfo { // only show the pop-up view when the state variable is true
                        VStack {
                            Text("Nguyễn Giang Huy") // add your app author name here
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text("S3836454") // add your app author name here
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text("Software Engineering") // add your app author name here
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Button {
                                showInfo = false // set the state variable to false to hide the pop-up view
                            } label: {
                                Text("Close") // add a close button to dismiss the pop-up view
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue) // change the background color of the button
                                    .cornerRadius(10) // add some corner radius to the button
                            }
                        }
                        .frame(width: 300, height: 200) // adjust the size of the pop-up view
                        .background(Color.white) // change the background color of the pop-up view
                        .cornerRadius(20) // add some corner radius to the pop-up view
                        .shadow(radius: 10) // add some shadow effect to the pop-up view
                    }
        }
        
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
