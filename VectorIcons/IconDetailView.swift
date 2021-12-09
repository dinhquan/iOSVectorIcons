//
//  IconDetailView.swift
//  VectorIcons
//
//  Created by Quan on 09/12/2021.
//

import SwiftUI

struct IconDetailView: View {
    let item: IconCollection.Item
    
    var body: some View {
        Text(item.name)
    }
}

struct IconDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IconDetailView(item: .init(name: "home", icon: .antDesign(.home)))
    }
}
