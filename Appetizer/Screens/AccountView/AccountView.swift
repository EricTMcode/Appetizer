//
//  AccountView.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var vm = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $vm.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $vm.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $vm.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthday", selection: $vm.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        vm.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                } header: {
                    Text("Personal Info")
                }
               
                Section {
                    Toggle("Extra Napkins", isOn: $vm.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $vm.user.frequentRefills)
                } header: {
                    Text("Requests")
                }
                .tint(.brandPrimary)
            }
                .navigationTitle("🤣 Account")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Dismiss") { focusedTextField = nil }
                    }
                }
        }
        .task {
            vm.retrieveUser()
        }
        .alert(item: $vm.alertItem) { AlertItem in
            Alert(title: AlertItem.title, message: AlertItem.message, dismissButton: AlertItem.dismiss)
        }
    }
}

#Preview {
    AccountView()
}
