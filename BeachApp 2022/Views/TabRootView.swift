//
//  TabRootView.swift
//  BeachApp 2022
//
//  Created by David on 31/01/2023.
//

import SwiftUI

struct TabRootView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabRootView()
    }
}
