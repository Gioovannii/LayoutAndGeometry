//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Giovanni Gaffé on 2022/1/17.
//

import SwiftUI

// MARK: - Challenges

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
