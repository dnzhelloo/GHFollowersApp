//
//  SceneDelegate.swift
//  githubFollowersAPP
//
//  Created by deniz on 4/19/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
        
    }
    
    func configureNavigationBar(){
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    func createSearchNC()->UINavigationController{
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC()->UINavigationController{
        let favoritesVC = FavoritesListVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
    
    func createTabBar()-> UITabBarController{
        let tabbar = UITabBarController()
        tabbar.tabBar.isTranslucent = false
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = [createSearchNC(),createFavoritesNC()]
        
        return tabbar
    }
}

