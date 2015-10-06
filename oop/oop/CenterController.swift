//
//  CenterController.swift
//  oop
//
//  Created by 赵严 on 15/10/6.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class CenterController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let centerNavigationController = UINavigationController();
        let centenViewController = UIViewController();
        let lable = UILabel(frame: CGRectMake(20, 80, 80, 80));
        
        lable.text = "会员";
        centenViewController.title = "会员";
        centenViewController.view.addSubview(lable);
        centerNavigationController.addChildViewController(centenViewController);
        
        self.view.addSubview(centerNavigationController.view);

        
        print("centen");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
