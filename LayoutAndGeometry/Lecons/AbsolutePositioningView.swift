//
//  AbsolutePositioningView.swift
//  LayoutAndGeometry
//
//  Created by Giovanni Gaffé on 2022/1/18.
//

import SwiftUI

struct AbsolutePositioningView: View {
    var body: some View {
        Text("Hello, World!")
            .background(.red)
            .offset(x: 100, y: 100)

    }
}

struct AbsolutePositioningView_Previews: PreviewProvider {
    static var previews: some View {
        AbsolutePositioningView()
    }
}
