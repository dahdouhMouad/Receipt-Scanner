//
//  OnbaordingSlideView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct OnbaordingSlideView: View {
    var image: String
    var text: String
    
    var body: some View {
        ZStack{
            Color.clear
            VStack {
                Image(image)
                .frame(height: 200)
                
                Spacer()
                    .frame(height: 40)
                
                Text(text)
                    .font(
                    Font.custom("Colfax-Bold", size: 38)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top)
            }
            .padding()
        }
    }
}

struct OnbaordingSlideView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            CustomColor.myBlue.ignoresSafeArea()
            OnbaordingSlideView(image: "Receipts", text: "Say goodbye \nto paper receipts")
        }
    }
}
