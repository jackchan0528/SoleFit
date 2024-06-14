//
//  AuthenticationViewModel.swift
//  SoleFit
//
//  Created by hocman on 13/6/2024.
//

import Foundation

class AuthenticationViewModel: ObservableObject, Identifiable {
    @Published var state: AuthenticationState = .introduction
    
    
    func changeState(state: AuthenticationState) {
        self.state = state
    }
}
