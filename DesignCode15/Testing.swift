//
//  Testing.swift
//  DesignCode15
//
//  Created by Younis J on 22/03/2022.
//

import SwiftUI

struct Testing: View {
    var body: some View {
        Canvas { context, size in
            context.draw(
                Text("Younis")
                    .font(.largeTitle)
                ,at: CGPoint(x: 50, y: 50)
            )
            
            context.draw(Image("Blob 1"), at: CGPoint(x: size.width, y: size.height))
            
            context.draw(Image(systemName: "person"), at: CGPoint(x: 100, y: 100))
            
            context.fill(Path(ellipseIn: CGRect(x: 100, y: 100, width: 200, height: 200)), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 200, y: 200)))
        }
        .foregroundStyle(.linearGradient(colors:[.pink,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
        .frame(width: 400, height: 400)
    }
}
        

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Testing()
        }
    }
}
