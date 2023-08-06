//
//  GreetingView.swift
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
                    .font(Font.custom("Didot", size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("""
                     Let's Explore the world 🌍 with Travel App 🏆
                     """)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Spacer()
                
                ZStack{
                    Image("AppLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
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
                        .overlay(
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: 35, height: 35)
                                .offset(x: 100)
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
