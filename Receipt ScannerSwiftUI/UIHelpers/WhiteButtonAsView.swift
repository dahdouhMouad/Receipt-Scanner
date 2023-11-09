//
//  WhiteButtonAsView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct WhiteButtonAsView: View {
    var text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.white)
            .frame(height: 50)
            .overlay {
                Text(text)
                    .font(Font.custom("Colfax-Regular", size: 20))
                    .kerning(0.4)
                    .foregroundColor(CustomColor.myBlue)
            }
    }
}

struct WhiteButtonAsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            CustomColor.myBlue.ignoresSafeArea()
            Button {
                
            } label: {
                WhiteButtonAsView(text: "Button")
            }
        }
    }
}
