//
//  iOSVectorIconsApp.swift
//  iOSVectorIcons
//
//  Created by Quan on 17/12/2021.
//

import SwiftUI

@main
struct iOSVectorIconsApp: App {
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
