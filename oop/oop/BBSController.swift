//
//  bbsController.swift
//  oop
//
//  Created by 赵严 on 15/10/6.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class BBSController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let bbsNavigationController = UINavigationController();
        let bbsViewController = UIViewController();
        let lable = UILabel(frame: CGRectMake(20, 80, 80, 80));
        
        lable.text = "社区";
        bbsViewController.title = "社区";
        bbsViewController.view.addSubview(lable);
        bbsNavigationController.addChildViewController(bbsViewController);
        
        self.view.addSubview(bbsNavigationController.view);

        
        print("BBSController");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
