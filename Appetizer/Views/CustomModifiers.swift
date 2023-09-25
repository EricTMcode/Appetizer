//
//  CustomModifiers.swift
//  Appetizer
//
//  Created by Eric on 24/09/2023.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}

struct ListCellImageStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}
