//
//  AppDelegate.swift
//  Chat me
//
//  Created by Александр Борисов on 05.10.2022.
//

import UIKit
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupUITabBar()


        print("file path")
        print(Realm.Configuration.defaultConfiguration.fileURL)

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

    func setupUITabBar() {
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = #colorLiteral(red: 0, green: 0.9517167211, blue: 1, alpha: 1)
        UITabBar.appearance().unselectedItemTintColor = #colorLiteral(red: 0, green: 0.2079703808, blue: 1, alpha: 1)
//        UITabBar.appearance().items?[0].image = UIImage(systemName: "person.2")
        
    }


}

