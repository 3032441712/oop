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
        self.view.addSubview(FriendModel().view)
        print("centen");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
