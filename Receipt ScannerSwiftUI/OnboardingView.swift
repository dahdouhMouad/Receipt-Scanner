//
//  ContentView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
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
                    
                } label: {
                    WhiteButtonAsView(text:"Get Started")
                }
                
                Button {
                    
                } label: {
                    BorderButtonAsView(text: "Login")
                }

            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

