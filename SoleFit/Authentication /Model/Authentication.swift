//
//  Authentication.swift
//  SoleFit
//
//  Created by hocman on 15/6/2024.
//

import Foundation

enum AuthenticationState: String, Codable, CaseIterable {
    case introduction = "introduction"
    case signin = "sign_in"
    case signup = "sign_up"
    case verifyPhone = "verify_phone"
    case setPassword = "set_password"
}
