//
//  HomeView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 9/11/2023.
//

import SwiftUI



struct HomeView: View {
    @State var selection: Int = 1
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                Text("Screen1")
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(1)
                
                Text("Screen2")
                    .tabItem {
                        Label("Scan", image: "2")
                    }
                    .tag(2)
                
                Text("Screen3")
                    .tabItem {
                        Label("Expenses", image: "3")
                    }
                    .tag(3)
                
                Text("Screen4")
                    .tabItem {
                        Label("Account", image: "4")
                    }
                    .tag(4)
                
            }
            .tint(CustomColor.myBlue)
        }
        .navigationBarBackButtonHidden()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
