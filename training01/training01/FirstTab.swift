//
//  FirstTab.swift
//  training01
//
//  Created by 狩野 恭平 on 2015/08/18.
//  Copyright (c) 2015年 狩野 恭平. All rights reserved.
//

import UIKit

class FirstTab: UINavigationController,UINavigationControllerDelegate {
   
    let customNavigationBar = UIImageView(image: UIImage(named: "sea.jpg"))
    let backBtn = BackButton()
// 質問 これだとなぜか実行時例外
//    init() {
//        super.init(rootViewController: ParentController())
//    }
//
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customNavigationBar.contentMode = UIViewContentMode.ScaleAspectFill
        customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 100)
        customNavigationBar.userInteractionEnabled = true
        self.view.addSubview(customNavigationBar)

        backBtn.addTarget(self, action: "pushBackBtn:", forControlEvents: UIControlEvents.TouchUpInside)
        customNavigationBar.addSubview(backBtn)
        
        self.delegate = self
    }
    
    func pushBackBtn(sender:UIButton){
        self.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func navigationController(navigationController: UINavigationController,
        willShowViewController viewController: UIViewController, animated: Bool) {
            backBtn.hidden = self.childViewControllers.count <= 1 ? true : false
    }
}