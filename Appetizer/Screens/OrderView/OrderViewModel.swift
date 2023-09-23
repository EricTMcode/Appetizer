//
//  OrderViewModel.swift
//  Appetizer
//
//  Created by Eric on 23/09/2023.
//

import Foundation

final class OrderViewModel: ObservableObject {
    
    @Published var orders: [Appetizer] = []
    
}
