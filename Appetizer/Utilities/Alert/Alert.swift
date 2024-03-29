//
//  Alert.swift
//  Appetizer
//
//  Created by Eric on 20/09/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismiss: Alert.Button
}

struct AlertContext {
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismiss: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismiss: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting the server. if this persiste, please contact support."),
                                      dismiss: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection"),
                                            dismiss: .default(Text("OK")))
    
    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been filled out."),
                                            dismiss: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismiss: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your profile information was successfully saved."),
                                            dismiss: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."),
                                            dismiss: .default(Text("OK")))
    
    
}
