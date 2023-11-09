//
//  RegisterView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var continueTapped: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Image("Logo_Blue")
                    .frame(height: 64)
                Spacer()
                    .frame(height: 30)
                CustomTextField(title: "Full Name", value: $fullName)
                CustomTextField(title: "Email Address", value: $email)
                PasswordTextField(title: "Password", value: $password)
                
                Spacer()
                    .frame(height: 20)
                
                Button {
                    continueTapped.toggle()
                } label: {
                    BlueButtonAsView(text: "Continue")
                }
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $continueTapped) {
            HomeView()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
