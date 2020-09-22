//
//  AppDelegate.swift
//  Crypto-Currencies
//
//  Created by bucquet on 4/21/17.
//  Copyright © 2017 bucquet. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var FakeAllCrypo = [Crypto]()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        
        GetMarketValues()
        
        
        allthecryptos = [Bitcoin, Ethereum, Steemit, Litecoin, Ripple, EthereumClassic, Dash, Monero, Bitshares, NEM, Stratis, BitcoinCash, NEO]
        LastAllTheCryptos = [Bitcoin, Ethereum, Steemit, Litecoin, Ripple, EthereumClassic, Dash, Monero, Bitshares, NEM, Stratis, BitcoinCash, NEO]
        
        if let saveddata = UserDefaults.standard.object(forKey: "mesCryptos") {
            allthecryptos = (NSKeyedUnarchiver.unarchiveObject(with: saveddata as! Data) as? [Crypto])!
            LastAllTheCryptos = (NSKeyedUnarchiver.unarchiveObject(with: saveddata as! Data) as? [Crypto])!
        }
        
        let NotFirstTimeDefault = UserDefaults.standard
        NotFirstTime = NotFirstTimeDefault.bool(forKey: "First")
        NotFirstDol = NotFirstTime
        if NotFirstTime == false{
            for index in 3...allthecryptos.count - 1{
                allthecryptos[index].show = false
            }
            dollars = true
            NotFirstTime = true
            NotFirstTimeDefault.set(NotFirstTime, forKey: "First")
        }
        
        
        Thread.sleep(forTimeInterval: 1.000)
        
        return true
    
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        var nbset = 0
        for _ in allthecryptos{
            LastAllTheCryptos[nbset].marketValue = allthecryptos[nbset].marketValue
            nbset += 1
        }
        
        nbset = 0
        for _ in allthecryptos{
            LastAllTheCryptos[nbset].marketValueEuro = allthecryptos[nbset].marketValueEuro
            nbset += 1
        }
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
        GetMarketValues()
        
        Thread.sleep(forTimeInterval: 0.5000)
        
        Update_Cours()
        
        Update_Valeur()
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        SaveMyCryptos()
    }
}

