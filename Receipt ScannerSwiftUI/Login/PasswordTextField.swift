//
//  PasswordTextField.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI

struct PasswordTextField: View {
    var title: String
    @Binding var value: String
    @State var visible = false
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
            HStack {
                if visible {
                    TextField("", text: $value)
                        .font(Font.custom("Colfax-Regular", size: 16))
                        .foregroundColor(CustomColor.myBlue)
                        .frame(height: 40)
                } else {
                    SecureField("", text: $value)
                        .font(Font.custom("Colfax-Regular", size: 16))
                        .foregroundColor(CustomColor.myBlue)
                        .frame(height: 40)
                }
                Button {
                    visible.toggle()
                } label: {
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(Color.black.opacity(0.7))
                        .opacity(0.8)
                }
            }
            
            Divider()
                .overlay {
                    CustomColor.myBlue
                }
        }
    }
}

struct PasswordTextField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextField(title: "Password", value: .constant("123456"))
    }
}
