//
//  ContentView.swift
//  DesignCode15
//
//  Created by Younis J on 15/03/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group{
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .preferredColorScheme(.dark)
                .previewLayout(.device)
        }
            
        ContentView()
            .previewDevice("iPad Pro (11-inch) (3rd generation)")

    }
}
