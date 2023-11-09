//
//  BlueButtonAsView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct BlueButtonAsView: View {
    var text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(CustomColor.myBlue)
            .frame(height: 50)
            .overlay {
                Text(text)
                    .font(Font.custom("Colfax-Regular", size: 20))
                    .kerning(0.4)
                    .foregroundColor(.white)
        }
    }
}

struct BlueButtonAsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Button {
                
            } label: {
                BlueButtonAsView(text: "Test")
            }
        }
        .padding()
    }
}
