//
//  ViewController.swift
//  oop
//
//  Created by 赵严 on 15/10/5.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let homeNavigationController = UINavigationController();
        let homeViewController = UIViewController();
        let lable = UILabel(frame: CGRectMake(20, 80, 80, 80));
        
        lable.text = "首页";
        homeViewController.title = "首页";
        homeViewController.view.addSubview(lable);
        homeNavigationController.addChildViewController(homeViewController);
        
        self.view.addSubview(homeNavigationController.view);
        print("home");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

