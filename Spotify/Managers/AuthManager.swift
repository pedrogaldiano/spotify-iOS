//
//  AuthManager.swift
//  Spotify
//
//  Created by PEDRO GALDIANO DE CASTRO on 29/11/21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "b49ea8f4d30948a4a86bdbfe891c986f"
        static let clientSecret = "3d4f082c4dc44649b8961e85d9152e1e"
    }
    
    public var signInURI: URL? {
        let scope = "user-read-private"
        let redirectURI = "https://www.iosacademy.io"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scope)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    private init() {
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping( (Bool) -> Void)) {
        // Get Token
    }
    
    public func refreshAcessToken() {
        
    }
    
    public func cacheToken() {
        
    }
}
