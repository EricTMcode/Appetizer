//
//  AppetizerListCell.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack() {
            //            AppetizerRemoteImage(urlString: appetizer.imageUrl)
            //                .scaledToFit()
            //                .frame(width: 120, height: 90)
            //                .cornerRadius(8)
            
            AsyncImage(url: URL(string: appetizer.imageUrl)) { image in
                image
                    .resizable()
                    .modifier(ListCellImageStyle())
            } placeholder: {
                Image(.foodPlaceholder)
                    .resizable()
                    .modifier(ListCellImageStyle())
            }
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price.formatted())")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
