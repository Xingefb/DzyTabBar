//
//  ConfigSlideMenu.swift
//  DzyTabBar
//
//  Created by Dzy on 02/03/2017.
//  Copyright © 2017 Dzy. All rights reserved.
//

import UIKit

import SlideMenuControllerSwift


class ConfigSlideMenu: NSObject {

    open static func configUI() -> (UIViewController) {
        
        let vc = RootViewController()
        vc.tabBar.isTranslucent = true;
        
        let story = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let left = story.instantiateViewController(withIdentifier: "LeftViewController")
        let nv1 = UINavigationController.init(rootViewController: left)
        
        SlideMenuOptions.contentViewScale = 1
        SlideMenuOptions.leftViewWidth = 200
        
        let slidMenu = SlideMenuController.init(mainViewController: vc, leftMenuViewController: nv1)
        return slidMenu
        
    }

    
}
