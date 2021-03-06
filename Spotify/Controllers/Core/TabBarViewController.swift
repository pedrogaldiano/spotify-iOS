//
//  UITabBarViewController.swift
//  Spotify
//
//  Created by PEDRO GALDIANO DE CASTRO on 29/11/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let home = HomeViewController()
        let search = SearchViewController()
        let library = LibraryViewController()
        
        home.title = "Home"
        search.title = "Search"
        library.title = "Library"
        
        home.navigationItem.largeTitleDisplayMode = .always
        search.navigationItem.largeTitleDisplayMode = .always
        library.navigationItem.largeTitleDisplayMode = .always

        let navHome = UINavigationController(rootViewController: home)
        let navSearch = UINavigationController(rootViewController: search)
        let navLibrary = UINavigationController(rootViewController: library)
        
        navHome.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navSearch.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navLibrary.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)

        navHome.navigationBar.prefersLargeTitles = true
        navSearch.navigationBar.prefersLargeTitles = true
        navLibrary.navigationBar.prefersLargeTitles = true

        setViewControllers([navHome, navSearch, navLibrary], animated: false)
    }
    
}
