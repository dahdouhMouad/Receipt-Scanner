//
//  ContentView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct OnboardingView: View {
    @State var getStarted: Bool = false
    @State var loginButton: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColor.myBlue
                    .ignoresSafeArea()
                VStack {
                    TabView {
                        OnbaordingSlideView(image: "Receipts", text: "Say goodbye \nto paper receipts")
                        OnbaordingSlideView(image: "Chart", text: "Monitor your \ndaily spending ")
                        OnbaordingSlideView(image: "Location", text: "Easily access your receipts anywhere")
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    
                    Button {
                        getStarted.toggle()
                    } label: {
                        WhiteButtonAsView(text:"Get Started")
                    }
                    
                    Button {
                        loginButton.toggle()
                    } label: {
                        BorderButtonAsView(text: "Login")
                    }
                }
                .padding()
                .navigationDestination(isPresented: $getStarted) {
                    GetStartedView()
                }
                .navigationDestination(isPresented: $loginButton) {
                    LoginView()
                }
            }
        }
        .tint(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

