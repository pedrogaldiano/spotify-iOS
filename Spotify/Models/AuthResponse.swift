//
//  AuthResponse.swift
//  Spotify
//
//  Created by PEDRO GALDIANO DE CASTRO on 30/11/21.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
