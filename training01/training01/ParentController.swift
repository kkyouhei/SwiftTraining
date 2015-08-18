//
//  MainController.swift
//  training01
//
//  Created by 狩野 恭平 on 2015/08/18.
//  Copyright (c) 2015年 狩野 恭平. All rights reserved.
//

import UIKit

class ParentController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellowColor()

        let nextBtn: NextButton = NextButton()
        nextBtn.addTarget(self, action: "pushNextButton:", forControlEvents: UIControlEvents.TouchUpInside)
        nextBtn.layer.position = CGPoint(x: self.view.frame.width / 2, y: self.view.frame.height / 2)
        self.view.addSubview(nextBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func pushNextButton(sender:UIButton){
        self.navigationController?.pushViewController(ChildController(), animated: true)
    }
}

