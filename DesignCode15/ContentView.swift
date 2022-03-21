//
//  ContentView.swift
//  DesignCode15
//
//  Created by Younis J on 15/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()

            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(20)
                .padding(5)
                .background(Color("Background"))
                .cornerRadius(30)

            Text("SwiftUI for IOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("20 sections 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)

            
            Text("Build an iOS app for iOS 15 with custom layouts,animations and ...")
                .font(.footnote)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(Color("Background"))
        .cornerRadius(30.0)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .padding(.horizontal,20)
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
