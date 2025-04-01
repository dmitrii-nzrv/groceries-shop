//
//  SignInView.swift
//  OnlineGroceriesSwiftUI
//
//  Created by CodeForAny on 30/07/23.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @State var txtMobile: String = ""
    @State var isShowingPicker: Bool = false
    @State var countryObj: Country?
    
    
    var body: some View {
        ZStack{
            
            Image("bottom_bg")
            .resizable()
            .scaledToFill()
            .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("sign_in_top")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenWidth)
                
                Spacer()
            }
            
            ScrollView{
                    
                VStack(alignment: .leading){
                    Text("Get your groceries\nwith nectar")
                        .font(.customfont(.bold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom , 25)
                    
                    HStack {
                        Button {
                            isShowingPicker = true
                            
                        } label: {
                            
                            if let countryObj = countryObj {
                                Text("\(countryObj.isoCode.getFlag())")
                                    .font(.customfont(.light, fontSize: 30))
                                    
                                
                                Text("+\(countryObj.phoneCode)")
                                    .font(.customfont(.medium, fontSize: 18))
                                    .foregroundStyle(Color.primaryText)
                            }
                            
                        }
                        TextField("Enter Mobile",text: $txtMobile)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundStyle(Color.primaryText)
                    }
                    
                    Divider()
                        .padding(.bottom, 25)
                
                    Text( "Or connect with social media")
                        .font(.customfont(.light, fontSize: 14))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom , 25)
                    
                    Button {
                        
                    } label: {
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                        Text("Continue with Google")
                            .font(.customfont(.regular, fontSize: 18))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color.init(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 5)
                    
                    Button {
                        
                    } label: {
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                        Text("Continue with Facebook")
                            .font(.customfont(.regular, fontSize: 18))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color.init(hex: "4A66AC"))
                    .cornerRadius(20)
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets +  .screenWidth)
                
               
            }
            
                
        }
        .onAppear(){
            self.countryObj = Country(phoneCode: "7", isoCode: "RU")
        }
        .sheet(isPresented: $isShowingPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
