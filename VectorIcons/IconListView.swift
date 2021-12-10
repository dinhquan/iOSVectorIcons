//
//  ContentView.swift
//  VectorIcons
//
//  Created by Quan on 15/11/2021.
//

import SwiftUI

struct IconListView: View {
    fileprivate let allCollections: [IconCollection]
    
    @State private var collections: [IconCollection] = []
    @State private var searchText = ""


    private let columnWidth = (UIScreen.main.bounds.width - 100) / 4
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    init() {
        allCollections = IconCollection.all
    }
    
    var body: some View {
        Group {
            VStack(spacing: 0) {
                Group {
                    TextField("Search an icon", text: $searchText)
                        .onChange(of: searchText) {
                            search(keyword: $0.trimmingCharacters(in: .whitespacesAndNewlines))
                        }
                        .padding(.vertical, 6)
                        .padding(.horizontal, 8)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(white: 0.94)))
                        .padding()
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(Color(white: 0.9))
                }
                List {
                    ForEach(collections, id: \.name) { collection in
                        Section(header: Text(collection.name).padding(EdgeInsets(top: 4, leading: 15, bottom: 4, trailing: 0))) {
                            LazyVGrid(columns: columns) {
                                ForEach(collection.items, id: \.name) { item in
                                    IconCell(item: item)
                                }
                            }
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarHidden(true)

        }.onAppear {
            collections = allCollections
        }
    }
    
    private func search(keyword: String) {
        collections = allCollections
            .map { $0.searching(keyword: keyword) }
            .filter { !$0.items.isEmpty }
    }
}

struct IconCell: View {
    let item: IconCollection.Item
    
    var body: some View {
        VStack(spacing: 0) {
            Icon(item.icon, size: 18)
            Text(item.name)
                .font(.system(size: 12))
                .minimumScaleFactor(0.5)
                .padding(.top, 4)
        }
        .frame(height: 40)
        .padding(.vertical, 4)
    }
}

struct IconCollection {
    struct Item {
        let name: String
        let icon: IconFont
    }
    
    let name: String
    let items: [Item]
    
    func searching(keyword: String) -> IconCollection {
        return IconCollection(name: name, items: items.filter { $0.name.lowercased().contains(keyword.lowercased()) })
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

struct IconListView_Previews: PreviewProvider {
    static var previews: some View {
        IconListView()
    }
}
