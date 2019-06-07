//
//  AppDelegate.swift
//  IceCreamTest
//
//  Created by David Rothera on 07/06/2019.
//  Copyright © 2019 Supratude Limited. All rights reserved.
//

import UIKit
import IceCream
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var syncEngine: SyncEngine?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        syncEngine = SyncEngine.init(objects: [SyncObject<Person>(), SyncObject<Dog>(), SyncObject<Cat>()])
        
        let path = Realm.Configuration.defaultConfiguration.fileURL
        print(path ?? "")
        
        return true
    }
}

