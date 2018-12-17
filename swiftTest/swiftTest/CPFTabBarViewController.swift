//
//  CPFTabBarViewController.swift
//  swiftTest
//
//  Created by 曹鹏飞 on 2018/12/17.
//  Copyright © 2018年 jjs. All rights reserved.
//

import UIKit

class CPFTabBarViewController: UITabBarController {

    open override func viewDidLoad() {
        super.viewDidLoad()
        addChildConreollers()
        
    }
    func addChildConreollers(){
        addChildViewController(childController: HomeViewController(), title: "首页", imageName: "pfb_tabbar_homepage")
        addChildViewController(childController: SecondViewController(), title: "发现", imageName: "pfb_tabbar_discover")
        addChildViewController(childController: ThirdViewController(), title: "消息", imageName: "pfb_tabbar_order")
        addChildViewController(childController: FourViewController(), title: "我的", imageName: "pfb_tabbar_mine")
    }
    private func addChildViewController(childController: UIViewController,title:String,imageName:String) {
        childController.title = title;
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_selected")
        let navgationVc = CPFNavigationController(rootViewController: childController)
        addChildViewController(navgationVc)
        
    }
    
}
