//
//  AppDelegate.swift
//  Swift_Test
//
//  Created by liu dante on 2021/7/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        let loginVC = ViewController()
        let navi = UINavigationController(rootViewController: loginVC)
        window?.rootViewController = navi
        window?.makeKeyAndVisible()
        return true
    }
}
