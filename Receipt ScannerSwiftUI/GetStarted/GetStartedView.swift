//
//  GetStartedView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct GetStartedView: View {
    @State var loginTapped: Bool = false
    @State var registerTapped: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColor.myBlue.ignoresSafeArea()
                VStack(spacing: 12) {
                    Image("Logo")
                        .frame(height: 64)
                    Text("No more paper receipt!")
                        .font( Font.custom("Colfax-Regular", size: 14))
                        .kerning(0.28)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Button {
                        loginTapped.toggle()
                    } label: {
                        BorderButtonAsView(text: "Login")
                    }
                    
                    Button {
                        registerTapped.toggle()
                    } label: {
                        WhiteButtonAsView(text: "Register")
                    }
                }
                .padding()
                .navigationDestination(isPresented: $loginTapped) {
                    LoginView()
                }
                .navigationDestination(isPresented: $registerTapped) {
                    RegisterView()
                }
            }
        }
        .tint(.white)
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
