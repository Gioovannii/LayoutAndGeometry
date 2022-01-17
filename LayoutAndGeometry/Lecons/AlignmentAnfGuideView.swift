//
//  AlignmentAnfGuideView.swift
//  LayoutAndGeometry
//
//  Created by Giovanni Gaffé on 2022/1/17.
//

import SwiftUI

struct AlignmentAnfGuideView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Numbers \(position)")
                    .alignmentGuide(.leading) { _ in
                        Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

struct AlignmentAnfGuideView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentAnfGuideView()
    }
}

//Text("Hello world!")
//    .alignmentGuide(.leading) { d in
//        d[.trailing]
//    }
//Text("This is a longer line of text")

//HStack(alignment: .lastTextBaseline) {
//            Text("Live")
//                .font(.caption)
//            Text("long")
//            Text("and")
//                .font(.title)
//            Text("prosper")
//                .font(.largeTitle)
//        }

     
//        Text("Live long and prosper!")
//            .frame(width: 300, height: 300, alignment: .topLeading)
