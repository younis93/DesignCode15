//
//  Testing.swift
//  DesignCode15
//
//  Created by Younis J on 22/03/2022.
//

import SwiftUI

struct Testing: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()
            
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .clipShape(Circle())

                .padding(10)
                .background(Color("Background"), in: RoundedRectangle(cornerRadius: 30, style: .continuous))

            
            Text("SwiftUI for IOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            Text("20 section 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            Text("Build an iOS app for iOS 15 with custom layouts, animations and")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(20)
        .padding(.vertical, 20)
        .frame(maxHeight: 350)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10,x: 0,y: 20)


        .overlay(
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.3), .black.opacity(0.5)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )

        .padding(.horizontal, 20)


        .overlay(
            Image("Illustration 5")
                .resizable()
                .scaledToFit()
                .frame(height: 230)
                .offset(x: 50, y: -100)
        )
        
        .background(
            Image("Blob 1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(x: 50, y: -100)
        )
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Testing()
            Testing()
                .preferredColorScheme(.dark)
                .previewDevice("iPad Pro (11-inch) (3rd generation)")
        }
    }
}
