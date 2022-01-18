//
//  CustomAlignmentView.swift
//  LayoutAndGeometry
//
//  Created by Giovanni Gaffé on 2022/1/17.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct CustomAlignmentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@giovanniswift")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]
                        
                    }
                Image("Giovanni")
                    .resizable()
                    .frame(width: 64, height: 70)
            }
            
            VStack {
                Text("Full name: ")
                Text("GIOVANNI GAFFÉ")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                    .font(.largeTitle)
            }
        }
    }
}

struct CustomAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentView()
    }
}
