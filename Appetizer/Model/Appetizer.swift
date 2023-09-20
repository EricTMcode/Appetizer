//
//  Appetizer.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import Foundation

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageUrl: String
    let protein: Int
    let calories: Int
    let carbs: Int
    
    enum CodingKeys: String, CodingKey {
        case id, name, description, price, protein, calories, carbs
        case imageUrl = "imageURL"
    }
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appertizers",
                                           description: "This is the description for my appetizer. It's yummy.",
                                           price: 9.99,
                                           imageUrl: "asian-flank-steak",
                                           protein: 99,
                                           calories: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
