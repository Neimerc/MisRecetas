//
//  AppDelegate.swift
//  MisRecetas
//
//  Created by José Manuel Muñoz Manzano on 11/8/17.
//  Copyright © 2017 José Manuel Muñoz Manzano. All rights reserved.
//
// Para el GitHub

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

// En AppDelegate se configuran las fuentes, las barras de navegación y en general lo común a toda la aplicación
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Cambiamos el color del fondo de la barra de navegación
        UINavigationBar.appearance().barTintColor = UIColor(red: 240.0/255.0, green: 112.0/255.0, blue: 115.0/255.0, alpha: 1.0)
        // Color de la fuente para la vuelta al ViewController principal
        UINavigationBar.appearance().tintColor = UIColor.white
        
        // Configurar la fuente. Con Optional Binding porque la fuente puede no existir
        // Este es el para el título de la aplicación en la ViewController principal
        if let barFont = UIFont(name: "Avenir-Light", size: 22.0) {
            // Color del título y fuente con titleTextAttributes, que es un diccionario
            UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white,
                                                                NSFontAttributeName : barFont]
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

