//
//  FramesAndCoordinateView.swift
//  LayoutAndGeometry
//
//  Created by Giovanni Gaffé on 2022/1/18.
//

import SwiftUI


struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            
            GeometryReader { geo in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                    }
            }
            .background(.orange)
            
            Text("Right")
        }
    }
}


struct FramesAndCoordinateView: View {
    var body: some View {
        OuterView()
            .background(.red)
            .coordinateSpace(name: "Custom")
        
//        VStack {
//            GeometryReader { geo in
//                Text("Hello, World!")
//                    .frame(width: geo.size.width * 0.9)
//                    .background(.red)
//            }
//            .background(.green)
//
//            Text("More text")
//            .background(.blue)
//
//        }
    }
}

struct FramesAndCoordinateView_Previews: PreviewProvider {
    static var previews: some View {
        FramesAndCoordinateView()
    }
}
