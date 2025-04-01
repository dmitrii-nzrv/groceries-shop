//
//  WelcomeView.swift
//  GroceriesApp
//
//  Created by Dmitrii Nazarov on 27.03.2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcome_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Welcome\nto out store")
                    .font(.customfont(.bold, fontSize: 48))
                    .foregroundStyle(.white.opacity(0.7))
                // располагает строчки по центру
                    .multilineTextAlignment(.center)
                
                Text("Get your groceries in as fast as one hour")
                    .font(.customfont(.medium, fontSize: 18))
                    .foregroundStyle(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink {
                    SignInView()
                } label: {
                    RoundButton(title: "Get Started") {
                        
                    }
                }
                
                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal, 20)
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView {
        WelcomeView()
    }
    
}
