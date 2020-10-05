//
//  ContentView.swift
//  HrnXcerpts
//
//  Created by Alexander Burdiss on 9/14/20.
//  Copyright © 2020 Alexander Burdiss. All rights reserved.
//

import SwiftUI
/**
 The root tab view for the app. Environment variables are attached to this view, and passed to all of its children through @EnvironmentVariable
 */
struct ContentView: View {
    /**
     The user interface
     */
    var body: some View {
        TabView {
            CompositionListView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Excerpts")
            }
            ComposerListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Composers")
            }
            MoreView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("More")
            }
        }
        .environmentObject(Settings())
        .environmentObject(Favorites())
        .accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
