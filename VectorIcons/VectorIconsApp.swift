//
//  VectorIconsApp.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import SwiftUI

@main
struct VectorIconsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                IconListView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                IconDemoView()
                    .tabItem {
                        Image(systemName: "note")
                        Text("Demo")
                    }
            }
        }
    }
}
