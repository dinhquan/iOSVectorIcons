//
//  IconDetailView.swift
//  VectorIcons
//
//  Created by Quan on 09/12/2021.
//

import SwiftUI

struct IconDemoView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Title("Color Icons")
                HStack(spacing: 20) {
                    Icon(.entypo(.paper_plane))
                    Icon(.ionicons(.logo_facebook), size: 24, color: .blue)
                    Icon(.ionicons(.home), size: 30, color: Color(UIColor.purple))
                    IconButton(.evilIcons(.image), size: 30, color: .orange)
                    IconButton(.feather(.x_circle), size: 30, color: Color(UIColor.brown))
                }.padding(.top, 5)
                Title("Border Buttons")
                HStack(spacing: 20) {
                    IconButton(.ionicons(.settings_sharp), size: 20)
                        .style(width: 100, highlightedColor: .gray, cornerRadius: 20, borderWidth: 2, borderColor: .black)
                    IconButton(.octicons(.plus), size: 20, color: .red)
                        .style(horizontalPadding: 20, cornerRadius: 10, borderWidth: 2, borderColor: .red)
                }
                Title("Circle Buttons")
                HStack(spacing: 20) {
                    IconButton(.ionicons(.play), size: 40, color: .white)
                        .style(width: 60, height: 60, backgroundColor: Color(red: 0.180, green: 0.888, blue: 0.506), cornerRadius: 30)
                    IconButton(.entypo(.share), size: 20, color: .white)
                        .style(width: 40, height: 40, backgroundColor: Color(red: 0.180, green: 0.391, blue: 0.506), cornerRadius: 20)
                }
                Title("Filled Buttons")
                HStack(spacing: 20) {
                    IconButton(.ionicons(.trash), size: 24, color: .white)
                        .style(width: 80, height: 40, backgroundColor: Color(red: 0.923, green: 0.123, blue: 0), cornerRadius: 10)
                    IconButton(.ionicons(.apps), size: 24, color: .white)
                        .style(width: 50, height: 50, backgroundColor: Color(red: 0.923, green: 0.623, blue: 0), cornerRadius: 10)
                }
                Title("Full-width Buttons")
                VStack(spacing: 12) {
                    IconButton(.ionicons(.play), size: 24, color: .white)
                        .style(width: .infinity, height: 40, backgroundColor: .blue, cornerRadius: 20)
                    IconButton(.ionicons(.cloud_download), size: 24, color: .white)
                        .style(width: .infinity, height: 50, backgroundColor: Color(red: 0.864, green: 0.5, blue: 0.5), cornerRadius: 8)
                }
            }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
}

struct Title: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
            .font(.system(size: 14))
            .foregroundColor(Color(UIColor.darkGray))
            .padding(.top, 20)
    }
}

struct IconDemoView_Previews: PreviewProvider {
    static var previews: some View {
        IconDemoView()
    }
}
