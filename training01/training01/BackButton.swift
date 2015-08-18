//
//  NextButton.swift
//  training01
//
//  Created by 狩野 恭平 on 2015/08/19.
//  Copyright (c) 2015年 狩野 恭平. All rights reserved.
//

import UIKit

class BackButton : UIButton{
    override init(frame: CGRect) {
        super.init(frame: CGRect())
        setImage(UIImage(named: "airplane.png"), forState: .Normal)
        self.frame = CGRectMake(250, 40, 100, 50)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}