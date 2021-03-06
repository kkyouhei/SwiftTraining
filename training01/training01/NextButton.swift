//
//  NextButton.swift
//  training01
//
//  Created by 狩野 恭平 on 2015/08/19.
//  Copyright (c) 2015年 狩野 恭平. All rights reserved.
//

import UIKit

class NextButton : UIButton{
    override init(frame: CGRect) {
        super.init(frame: CGRect())
        setTitle("次へ", forState: UIControlState.Normal)
        backgroundColor = UIColor.blackColor()
        self.frame = CGRectMake(0, 0, 200, 100)
        self.layer.cornerRadius = 10
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}