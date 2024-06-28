//
//  AppDelegate.swift
//  NoteApp
//
//  Created by @suonvicheakdev on 26/6/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
    
        window?.rootViewController = LoginScreenViewController()
        window?.makeKeyAndVisible()

        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = .systemBackground
        
        let navigationBarScrollAppearance = UINavigationBarAppearance()
        navigationBarScrollAppearance.configureWithDefaultBackground()
        navigationBarScrollAppearance.backgroundColor = .customBackgroundColor
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = .customBackgroundColor
        
        let tabBarScrollAppearance = UITabBarAppearance()
        tabBarScrollAppearance.configureWithDefaultBackground()
        tabBarScrollAppearance.backgroundColor = .customBackgroundColor
        
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarScrollAppearance
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarScrollAppearance
        }
        
        return true
    }

}

