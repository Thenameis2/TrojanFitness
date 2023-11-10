//
//  FitnessApp_NeoApp.swift
//  FitnessApp-Neo
//
//  Created by Beau Nouvelle on 19/1/2023.
//


import SwiftUI
import Firebase



class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct FitnessApp_NeoApp: App {
    // register app delegate for Firebase setup
      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            User()
        }
    }
}
