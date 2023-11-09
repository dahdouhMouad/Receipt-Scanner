//
//  LoginView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var registerTapped: Bool = false
    @State var loginTapped: Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Spacer()
                Image("Logo_Blue")
                    .frame(height: 64)
                Spacer()
                    .frame(height: 12)
                CustomTextField(title: "Email Address", value: $email)
                PasswordTextField(title: "Password", value: $password)
                Spacer()
                    .frame(height: 20)
                
                Button {
                    loginTapped.toggle()
                } label: {
                    BlueButtonAsView(text: "Login")
                }
    
                Button {
                    registerTapped.toggle()
                } label: {
                    HStack {
                        Text("New user?")
                            .font(Font.custom("Colfax-Regular", size: 14))
                            .kerning(0.28)
                            .multilineTextAlignment(.center)
                            .foregroundColor(CustomColor.myBlack)
                        Text("Create Account")
                            .font(Font.custom("Colfax-Regular", size: 14))
                            .kerning(0.28)
                            .multilineTextAlignment(.center)
                            .foregroundColor(CustomColor.myBlue)
                    }
                }
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $registerTapped) {
            RegisterView()
        }
        .navigationDestination(isPresented: $loginTapped) {
            HomeView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
