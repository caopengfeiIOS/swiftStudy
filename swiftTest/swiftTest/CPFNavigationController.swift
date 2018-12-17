//
//  CPFNavigationController.swift
//  swiftTest
//
//  Created by 曹鹏飞 on 2018/12/17.
//  Copyright © 2018年 jjs. All rights reserved.
//

import UIKit

class CPFNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = RGBAlpa(0,198,176,1)
        let dict:NSDictionary = [NSAttributedStringKey.foregroundColor: UIColor.white,NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 17)]
        navigationBar.titleTextAttributes = dict as? [NSAttributedStringKey : AnyObject]
        // Do any additional setup after loading the view.
    }
}

extension CPFNavigationController{
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count>0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
}
