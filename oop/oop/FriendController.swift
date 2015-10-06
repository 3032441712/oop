//
//  FriendController.swift
//  oop
//
//  Created by 赵严 on 15/10/5.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class FriendController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let friendNavigationController = UINavigationController();
        let friendViewController = UIViewController();
        let lable = UILabel(frame: CGRectMake(20, 80, 80, 80));
        
        lable.text = "相亲";
        friendViewController.title = "相亲";
        friendViewController.view.addSubview(lable);
        friendNavigationController.addChildViewController(friendViewController);
        
        self.view.addSubview(friendNavigationController.view);
        print("friend");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
