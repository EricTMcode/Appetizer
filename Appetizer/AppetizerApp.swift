//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
