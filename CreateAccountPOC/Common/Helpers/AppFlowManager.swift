//
//  AppFlowManager.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import CoreData
import Foundation
import UIKit

enum PresentationStyle {
    case push, present, popup
}

class AppFlowManager {
    static let `default` = AppFlowManager()
    private init() {}
    
    var safeAreaInsets: UIEdgeInsets {
        return AppFlowManager.default.mainNavigationController.view.safeAreaInsets
    }
    
    var mainNavigationController: UINavigationController!
    
    private var window: UIWindow {
        if let window = AppDelegate.shared.window {
            return window
        }
        else {
            AppDelegate.shared.window = UIWindow()
            return AppDelegate.shared.window!
        }
    }
}

// MARK: - Pop Methods
extension AppFlowManager {
    func popViewController(animated: Bool) {
        self.mainNavigationController.popViewController(animated: animated)
    }
    
    func popToViewController(_ viewController: UIViewController, animated: Bool) {
        self.mainNavigationController.popToViewController(viewController, animated: animated)
    }
    
    func popToRootViewController(animated: Bool) {
        self.mainNavigationController.popToRootViewController(animated: animated)
    }
}

// MARK: - Public Navigation func
extension AppFlowManager {
    
    func setupInitialFlow() {
        goToCreateAccount()
    }
    
    func goToCreateAccount() {
        let createAccVC = CreateAccountViewController.instantiate(fromAppStoryboard: .CreateAccount)
        let nvc = UINavigationController(rootViewController: createAccVC)
        self.mainNavigationController = nvc
        self.window.rootViewController = nvc
        self.window.becomeKey()
        self.window.backgroundColor = .white
        self.window.makeKeyAndVisible()
    }
}


// MARK: - App Used Navigation Flow
extension AppFlowManager {
    func goToNewBorn() {
        let newBoarn = NewBornViewController.instantiate(fromAppStoryboard: .CreateAccount)
        self.mainNavigationController.pushViewController(newBoarn, animated: true)
    }
}
