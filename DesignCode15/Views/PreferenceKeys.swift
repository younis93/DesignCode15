//
//  PreferenceKeys.swift
//  DesignCode15
//
//  Created by Younis J on 21/08/2022.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
