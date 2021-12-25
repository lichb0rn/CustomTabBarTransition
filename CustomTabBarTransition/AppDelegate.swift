//
//  AppDelegate.swift
//  CustomTabBarTransition
//
//  Created by Miroslav Taleiko on 16.07.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        
//        let tabController = UITabBarController()
//        
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let fisrtVC = mainStoryboard.instantiateViewController(identifier: "firstVC") as! ViewController
//        let secondVC = mainStoryboard.instantiateViewController(identifier: "secondVC") as! SecondViewController
//        
//        fisrtVC.view.backgroundColor = .red
//        secondVC.view.backgroundColor = .orange
//        
//        let vcData: [(UIViewController, UITabBarItem)] = [
//            (fisrtVC, UITabBarItem(tabBarSystemItem: .featured, tag: 1)),
//            (secondVC, UITabBarItem(tabBarSystemItem: .contacts, tag: 2))
//        ]
//        
//        let vcs = vcData.map { (vc, item) -> UINavigationController in
//            let nav = UINavigationController(rootViewController: vc)
//            nav.tabBarItem = item
//            return nav
//        }
//        tabController.viewControllers = vcs
//        tabController.tabBar.isTranslucent = false
//        window.rootViewController = tabController
//        window.makeKeyAndVisible()
//        
//        self.window = window
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

