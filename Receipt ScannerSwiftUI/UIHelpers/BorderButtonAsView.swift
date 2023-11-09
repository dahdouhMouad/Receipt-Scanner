//
//  BorderButtonAsView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct BorderButtonAsView: View {
    var text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(.white,lineWidth: 1)
            .frame(height: 50)
            .overlay {
                Text(text)
                    .font(Font.custom("Colfax-Regular", size: 20))
                    .foregroundColor(.white)
            }
    }
}

struct BorderButtonAsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            CustomColor.myBlue.ignoresSafeArea()
            Button {
                
            } label: {
                BorderButtonAsView(text: "Button")
            }
        }
    }
}
