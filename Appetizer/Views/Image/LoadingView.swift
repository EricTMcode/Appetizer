//
//  LoadingView.swift
//  Appetizer
//
//  Created by Eric on 21/09/2023.
//

import SwiftUI

//struct ActivityIndicator: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor(named: "brandPrimary")
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//    
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView("Loading...")
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
        }
    }
}
