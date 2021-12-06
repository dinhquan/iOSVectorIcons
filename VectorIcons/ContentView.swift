//
//  ContentView.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import SwiftUI

struct ContentView: View {
    private let icons = IconFont.AntDesign.allCases.map {
        _Icon(icon: IconFont.antDesign($0), name: String(describing: $0))
    }

    var body: some View {
        VStack {
            IconButton(.antDesign(.filter), fill: .init()) {
                
            }
            List(icons) { icon in
                HStack {
                    Text(icon.name)
                    Spacer()
                    Icon(icon.icon)
                }
            }
        }
    }
}

private struct _Icon: Identifiable {
    let icon: IconFont
    let name: String
    
    var id: String {
        name
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
