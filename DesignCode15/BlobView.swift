//
//  BlobView.swift
//  DesignCode15
//
//  Created by Younis J on 04/04/2022.
//

import SwiftUI

struct BlobView: View {
    var body: some View {
        Canvas{ context, size in
            context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height)), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 200, y: 200)))
        }
        .frame(width: 400, height: 412)
//      .foregroundStyle(.linearGradient(colors: [.pink,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.65843*width, y: 0.99754*height))
        path.addCurve(to: CGPoint(x: 0.99403*width, y: 0.43419*height), control1: CGPoint(x: 0.90776*width, y: 0.99754*height), control2: CGPoint(x: 0.94286*width, y: 0.67366*height))
        path.addCurve(to: CGPoint(x: 0.61194*width, y: 0.00255*height), control1: CGPoint(x: 1.03197*width, y: 0.20443*height), control2: CGPoint(x: 0.86327*width, y: -0.01526*height))
        path.addCurve(to: CGPoint(x: 0.00291*width, y: 0.43419*height), control1: CGPoint(x: 0.3606*width, y: 0.02035*height), control2: CGPoint(x: -0.02085*width, y: 0.19438*height))
        path.addCurve(to: CGPoint(x: 0.21044*width, y: 0.74257*height), control1: CGPoint(x: 0.01347*width, y: 0.54079*height), control2: CGPoint(x: 0.11988*width, y: 0.61967*height))
        path.addCurve(to: CGPoint(x: 0.65843*width, y: 0.99754*height), control1: CGPoint(x: 0.38966*width, y: 0.96353*height), control2: CGPoint(x: 0.52121*width, y: 1.01178*height))
        path.closeSubpath()
        return path
    }
}

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}

struct BlobShape: Shape  {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.65843*width, y: 0.99754*height))
        path.addCurve(to: CGPoint(x: 0.99403*width, y: 0.43419*height), control1: CGPoint(x: 0.90776*width, y: 0.99754*height), control2: CGPoint(x: 0.94286*width, y: 0.67366*height))
        path.addCurve(to: CGPoint(x: 0.61194*width, y: 0.00255*height), control1: CGPoint(x: 1.03197*width, y: 0.20443*height), control2: CGPoint(x: 0.86327*width, y: -0.01526*height))
        path.addCurve(to: CGPoint(x: 0.00291*width, y: 0.43419*height), control1: CGPoint(x: 0.3606*width, y: 0.02035*height), control2: CGPoint(x: -0.02085*width, y: 0.19438*height))
        path.addCurve(to: CGPoint(x: 0.21044*width, y: 0.74257*height), control1: CGPoint(x: 0.01347*width, y: 0.54079*height), control2: CGPoint(x: 0.11988*width, y: 0.61967*height))
        path.addCurve(to: CGPoint(x: 0.65843*width, y: 0.99754*height), control1: CGPoint(x: 0.38966*width, y: 0.96353*height), control2: CGPoint(x: 0.52121*width, y: 1.01178*height))
        path.closeSubpath()
        return path
    }
}

