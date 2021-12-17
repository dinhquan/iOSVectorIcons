//
//  IconDetailView.swift
//  VectorIcons
//
//  Created by Quan on 09/12/2021.
//

import SwiftUI

struct IconDemoView: View {
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                Text("Color Icons")
                HStack {
                    Icon(.antDesign(.play))
                    Icon(.ionicons(.logo_facebook), size: 24, color: .blue)
                    Icon(.ionicons(.home), size: 30, color: Color(UIColor.purple))
                }

                Text("Border Buttons")
                HStack {
                    IconButton(
                        .ionicons(.add_circle),
                        size: 20,
                        fill: .init(width: 100, cornerRadius: 2)
                    ) {}
                }
                Text("Circle Buttons")
                HStack {
                    IconButton(
                        .ionicons(.play),
                        size: 40, color: .white,
                        fill: .init(
                            color: .black,
                            width: 60, height: 60,
                            cornerRadius: 30
                        )
                    ) {}
                }
                Text("Filled Buttons")
                HStack {
                    IconButton(
                        .ionicons(.logo_twitch),
                        size: 24, color: .white,
                        fill: .init(
                            color: .blue,
                            width: 80, height: 40,
                            borderWidth: 0
                        )
                    ) {}
                }
                Text("Full-width Buttons")
                HStack {
                    IconButton(
                        .ionicons(.play),
                        size: 24, color: .white,
                        fill: .init(
                            color: .blue,
                            width: .infinity, height: 40,
                            borderWidth: 0)
                    ) {}
                }
            }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
}

struct IconDemoView_Previews: PreviewProvider {
    static var previews: some View {
        IconDemoView()
    }
}
