//
//  AppDelegate.swift
//  HackJack.io
//
//  Created by Apple on 2/19/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit
import WatchConnectivity

extension WCSession{
    public func printInfo(){
        
        //paired
        print("Paired?: ", terminator: "")
        print(self.paired ? "Yes" : "No")
        
        //watch app installed
        print("Is Watch app installed?: ", terminator: "")
        print(self.watchAppInstalled ? "Yes" : "No")
        
        //complication enabled
        print("Is Complication enabled?: ", terminator: "")
        print(self.complicationEnabled ? "Yes" : "No")
        
        //watch directory
        print("The Watch directory url", terminator: "")
        print(self.watchDirectoryURL)
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, WCSessionDelegate {

    var window: UIWindow?
    func sessionReachabilityDidChange(session: WCSession) {
        print("Is Reachable: ", terminator: "")
        print(session.reachable ? "Yes" : "No")
    }
    
    func checkSession() {
        guard WCSession.isSupported() else {
            print("Session is not supported")
            return
        }
        
        let session = WCSession.defaultSession()
        session.delegate = self
        session.activateSession()
    }
    
    func sessionWatchStateDidChange(session: WCSession) {
        print("The Watch state has changed")
        session.printInfo()
    }


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        checkSession()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // =========================================================================
    // MARK: - WCSessionDelegate
    
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void) {
        print(__FUNCTION__)
        guard message["request"] as? String == "fireLocalNotification" else {return}
        
        let localNotification = UILocalNotification()
        localNotification.alertBody = "Message Received!"
        localNotification.fireDate = NSDate()
        localNotification.soundName = UILocalNotificationDefaultSoundName;
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    }

}

