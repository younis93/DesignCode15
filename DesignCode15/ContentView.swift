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

            Text("SwiftUI for IOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("20 sections 3 hours")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("Build an iOS app for iOS 15 with custom layouts,animations and ...")
                .font(.footnote)
                .lineLimit(2)
        }
        .padding(20.0)
        .frame(height: 350.0)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Background")/*@END_MENU_TOKEN@*/)
        .cornerRadius(30.0)
        .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
        
        VStack (alignment: .leading, spacing: 8){
            Spacer()
            
            Image("Logo 2")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 26, height: 26)
            
            
            Text("SwiftUI for IOS 15")
                .font(.largeTitle)
                .bold()
            
            Text("20 sections 3 hours")
                .font(.footnote)
                .fontWeight(.semibold)
            
            Text("Build an iOS app for iOS 15 with custom layouts,animations and ...")
                .lineLimit(2)
                .font(.footnote)
        }
        .padding(20)
        .frame(height: 350.0)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Background")/*@END_MENU_TOKEN@*/)
        .cornerRadius(30)
        .shadow(radius: 30)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
