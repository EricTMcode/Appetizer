//
//  AccountView.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var vm = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $vm.firstName)
                    TextField("Last Name", text: $vm.lastName)
                    TextField("Email", text: $vm.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthday", selection: $vm.birthdate, displayedComponents: .date)
                    
                    Button {
                        vm.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                } header: {
                    Text("Personal Info")
                }
               
                Section {
                    Toggle("Extra Napkins", isOn: $vm.extraNapkins)
                    Toggle("Frequent Refills", isOn: $vm.frequentRefills)
                } header: {
                    Text("Requests")
                }
                .tint(.brandPrimary)
            }
                .navigationTitle("🤣 Account")
        }
        .alert(item: $vm.alertItem) { AlertItem in
            Alert(title: AlertItem.title, message: AlertItem.message, dismissButton: AlertItem.dismiss)
        }
    }
}

#Preview {
    AccountView()
}
