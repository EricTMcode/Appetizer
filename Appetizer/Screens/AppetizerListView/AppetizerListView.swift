//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var vm = AppetizerListViewModel()
    
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(vm.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .listRowSeparator(.visible)
                        .onTapGesture {
                            vm.selectedAppetizer = appetizer
                            vm.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(vm.isShowingDetail)
                .listStyle(.plain)
            }
            .task {
                vm.getAppetizers()
            }
            
            .blur(radius: vm.isShowingDetail ? 20 : 0)
            
            if vm.isShowingDetail {
                AppetizerDetailView(appetizer: vm.selectedAppetizer!,
                                    isShowingDetail: $vm.isShowingDetail)
            }
            
            if vm.isLoading {
                LoadingView()
            }
        }
        .alert(item: $vm.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismiss)
        }
    }
}

#Preview {
    AppetizerListView()
}
