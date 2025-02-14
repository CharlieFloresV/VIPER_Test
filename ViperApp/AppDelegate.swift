//
//  AppDelegate.swift
//  ViperApp
//
//  Created by CARLOS ANDRES FLORES DE LA VEGA on 14/02/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame:UIScreen.main.bounds)
        let home: UIViewController = ProductListRouter.createModule()
        let navigationController = UINavigationController(rootViewController: home)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}
