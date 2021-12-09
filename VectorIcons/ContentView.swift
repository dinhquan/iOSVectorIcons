//
//  ContentView.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State fileprivate var collections: [IconCollection] = []

    private let columnWidth = (UIScreen.main.bounds.width - 100) / 4
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        Group {
            VStack {
                List {
                    ForEach(collections) { collection in
                        Section(header: Text(collection.name)) {
                            LazyVGrid(columns: columns) {
                                ForEach(collection.items) { item in
                                    VStack(spacing: 0) {
                                        Icon(item.icon)
                                        Text(item.name)
                                            .font(.system(size: 12))
                                            .minimumScaleFactor(0.5)
                                            .padding(.top, 4)
                                    }
                                    .frame(height: 40)
                                }
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
            }
        }
        .onAppear {
            loadFonts()
        }
    }
    
    private func loadFonts() {
        DispatchQueue.global().async {
            let all = IconCollection.all
            DispatchQueue.main.async {
                self.collections = all
            }
        }
    }
}

private struct IconCollection: Identifiable {
    struct Item: Identifiable {
        let name: String
        let icon: IconFont
        
        var id: String {
            name
        }
    }
    let name: String
    let items: [Item]
    
    var id: String {
        name
    }
    
    static var all: [IconCollection] {
        return [
            IconCollection(name: "AntDesign", items: IconFont.AntDesign.allCases.map { Item(name: String(describing: $0), icon: IconFont.antDesign($0)) }),
            IconCollection(name: "Entypo", items: IconFont.Entypo.allCases.map { Item(name: String(describing: $0), icon: IconFont.entypo($0)) }),
            IconCollection(name: "Evil Icons", items: IconFont.EvilIcons.allCases.map { Item(name: String(describing: $0), icon: IconFont.evilIcons($0)) }),
            IconCollection(name: "Feather", items: IconFont.Feather.allCases.map { Item(name: String(describing: $0), icon: IconFont.feather($0)) }),
            IconCollection(name: "Font Awesome", items: IconFont.FontAwesome.allCases.map { Item(name: String(describing: $0), icon: IconFont.fontAwesome($0)) }),
            IconCollection(name: "Font Awesome 5", items: IconFont.FontAwesome5.allCases.map { Item(name: String(describing: $0), icon: IconFont.fontAewsome5($0)) }),
            IconCollection(name: "Fontisto", items: IconFont.Fontisto.allCases.map { Item(name: String(describing: $0), icon: IconFont.fontisto($0)) }),
            IconCollection(name: "Foundation", items: IconFont.Foundation.allCases.map { Item(name: String(describing: $0), icon: IconFont.foundation($0)) }),
            IconCollection(name: "Ionicons", items: IconFont.Ionicons.allCases.map { Item(name: String(describing: $0), icon: IconFont.ionicons($0)) }),
            IconCollection(name: "Material Community Icons", items: IconFont.MaterialCommunityIcons.allCases.map { Item(name: String(describing: $0), icon: IconFont.materialCommunityIcons($0)) }),
            IconCollection(name: "Material Icons", items: IconFont.MaterialIcons.allCases.map { Item(name: String(describing: $0), icon: IconFont.materialIcons($0)) }),
            IconCollection(name: "Octicons", items: IconFont.Octicons.allCases.map { Item(name: String(describing: $0), icon: IconFont.octicons($0)) }),
            IconCollection(name: "Simple Line Icons", items: IconFont.SimpleLineIcons.allCases.map { Item(name: String(describing: $0), icon: IconFont.simpleLineIcons($0)) }),
            IconCollection(name: "Zocial", items: IconFont.Zocial.allCases.map { Item(name: String(describing: $0), icon: IconFont.zocial($0)) }),
        ]
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
