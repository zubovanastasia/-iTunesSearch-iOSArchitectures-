//
//  TabBarVC.swift
//  iOSArchitecturesDemo
//
//  Created by Anastasiia Zubova on 31.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabOne = SearchBuilder.build()
        let tabOneBarItem = UITabBarItem(title: "Apps",
                                         image: UIImage(systemName: "app"),
                                         selectedImage: UIImage(systemName: "app.fill"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        
        let tabTwo = SearchSongBuilder.build()
        let tabTwoBarItem2 = UITabBarItem(title: "Songs",
                                          image: UIImage(systemName: "music.mic.circle"),
                                          selectedImage: UIImage(systemName: "music.mic.circle.fill"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [tabOne, tabTwo]
    }
    
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //print("Selected \(viewController.title!)")
    }
}
