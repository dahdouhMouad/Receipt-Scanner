//
//  CustomTextField.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct CustomTextField: View {
    var title: String
    @Binding var value: String
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(title)
                    .foregroundColor(CustomColor.myBlack)
                    .font(Font.custom("Colfax-Regular", size: 16))
                    .frame(alignment: .topLeading)
                    .padding(.top)
                Spacer()
            }
            TextField("", text: $value)
                .font(Font.custom("Colfax-Regular", size: 16))
                .foregroundColor(CustomColor.myBlue)
                .frame(height: 40)
            Divider()
                .overlay {
                    CustomColor.myBlue
                }
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(title: "Test Text Field", value: .constant("Mouaddhd10@gmail.com"))
    }
}
