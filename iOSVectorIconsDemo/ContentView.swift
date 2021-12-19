//
//  ContentView.swift
//  iOSVectorIconsDemo
//
//  Created by Quan on 19/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
