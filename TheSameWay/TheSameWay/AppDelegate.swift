//
//  AppDelegate.swift
//  TheSameWay
//
//  Created by Siraphop Chaisirikul on 18/7/2568 BE.
//

import UIKit
import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        GMSServices.provideAPIKey("AIzaSyAW_vs27QGPGuJ9mYr-bqm-NcuWtVixHsw")
        
        return true
    }
}
