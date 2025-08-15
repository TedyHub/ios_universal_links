//
//  ContentView.swift
//  DeepTap Test
//
//  Created by Dmitry Panferov on 15.08.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var url: URL?

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            if let url = url {
                Text("Opened with URL:")
                    .padding(.top)
                Text(url.absoluteString)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .onOpenURL { incomingURL in
            url = incomingURL
        }
    }
}

#Preview {
    ContentView()
}
