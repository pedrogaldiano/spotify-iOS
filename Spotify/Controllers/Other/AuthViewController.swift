//
//  AuthViewController.swift
//  Spotify
//
//  Created by PEDRO GALDIANO DE CASTRO on 29/11/21.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate{

    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        
        let webView = WKWebView(frame: .zero, configuration: config)
        
        return webView
    }()
    
    public var completionHandler: ( (Bool) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Sign In"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        guard let url = AuthManager.shared.signInURI else { return }
        webView.load(URLRequest(url: url))
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        guard let url = webView.url else { return }
        
        let urlComponents = URLComponents(string: url.absoluteString)
        guard let code = urlComponents?.queryItems?.first(where: { $0.name == "code" } )?.value else { return }
        
        webView.isHidden = true
//        webView.load(URLRequest(url: url))
        
        print("\n\ncode: \(code)\n\n")
        
        AuthManager.shared.exchangeCodeForToken(code: code) { [weak self]  sucess in
            DispatchQueue.main.async {
                self?.navigationController?.popToRootViewController(animated: true)
                self?.completionHandler?(sucess)
            }
        }
    
    }
    
}
