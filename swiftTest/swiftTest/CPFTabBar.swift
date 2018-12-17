//
//  CPFTabBar.swift
//  swiftTest
//
//  Created by 曹鹏飞 on 2018/12/17.
//  Copyright © 2018年 jjs. All rights reserved.
//

import UIKit

class CPFTabBar: UITabBar {
    var  pulishBtn : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tab_play"), for: UIControlState.normal)
        btn.addTarget(self, action:#selector(BtnClick), for: UIControlEvents.touchUpInside)
        return btn
    }()
    @objc func BtnClick(){
        
    }
    
  

}
