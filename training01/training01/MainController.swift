//
//  MainController.swift
//  training01
//
//  Created by 狩野 恭平 on 2015/08/18.
//  Copyright (c) 2015年 狩野 恭平. All rights reserved.
//

import UIKit

class MainController: UITabBarController {
    
    // let firstTab = FirstTab()
    let firstTab = FirstTab(rootViewController: ParentController())
    let secondTab = SecondTab()
    let thirdTab = ThirdTab()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        secondTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Search, tag: 2)
        thirdTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Downloads, tag: 3)
        self.setViewControllers([firstTab, secondTab, thirdTab], animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

