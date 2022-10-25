//
//  AppDelegate.swift
//  RickAndMortyApp
//
//  Created by Martin Bove on 25/10/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
          self.window = UIWindow(frame: UIScreen.main.bounds)
          let controller = MainViewController()
          window?.rootViewController = controller
          window?.makeKeyAndVisible()

          return true
      }


}

