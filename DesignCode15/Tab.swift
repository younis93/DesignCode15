//
//  Tab.swift
//  DesignCode15
//
//  Created by Younis J on 10/04/2022.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text = String()
    var icon = String()
}

var itemTabs = [
    TabItem(text: "Learn Now", icon: "house"),
    TabItem(text: "Explore", icon: "magnifyingglass"),
    TabItem(text: "Notifications", icon: "bell"),
    TabItem(text: "Library", icon: "rectangle.stack")
]


