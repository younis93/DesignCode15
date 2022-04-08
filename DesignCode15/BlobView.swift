//
//  BlobView.swift
//  DesignCode15
//
//  Created by Younis J on 04/04/2022.
//

import SwiftUI

struct BlobView: View {
    @State var appear = false
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let now = timeline.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees(now.remainder(dividingBy: 3) * 60)
            let x = cos(angle.radians)
//            Text("Value \(x)")
            let angle2 = Angle.degrees(now.remainder(dividingBy: 6) * 10)
            let x2 = cos(angle2.radians)
            
            Canvas{ context, size in
                context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), x: x, x2: x2), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 400, y: 400)))
            }
            .frame(width: 400, height: 412)
            .rotationEffect(.degrees(appear ? 360 : 0))
        }
        .onAppear {
            withAnimation(.linear(duration: 20).repeatForever(autoreverses: true)) {
                appear = true
            }
        }
    }
    
    
    
    
    
    
    
    func path(in rect: CGRect, x: Double, x2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9923*width, y: 0.42593*height))
        path.addCurve(to: CGPoint(x: 0.6355*width*x2, y: height), control1: CGPoint(x: 0.92554*width*x2, y: 0.77749*height*x2), control2: CGPoint(x: 0.91864*width*x2, y: height))
        path.addCurve(to: CGPoint(x: 0.08995*width, y: 0.60171*height), control1: CGPoint(x: 0.35237*width*x, y: height), control2: CGPoint(x: 0.2695*width, y: 0.77304*height))
        path.addCurve(to: CGPoint(x: 0.34086*width, y: 0.06324*height*x), control1: CGPoint(x: -0.0896*width, y: 0.43038*height), control2: CGPoint(x: 0.00248*width, y: 0.23012*height*x))
        path.addCurve(to: CGPoint(x: 0.9923*width, y: 0.42593*height), control1: CGPoint(x: 0.67924*width, y: -0.10364*height*x), control2: CGPoint(x: 1.05906*width, y: 0.07436*height*x2))
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

