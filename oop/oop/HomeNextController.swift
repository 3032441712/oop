//
//  HomeNextController.swift
//  oop
//
//  Created by 赵严 on 15/10/7.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class HomeNextController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        print("Next");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        print("homeNext viewWill");
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated);
        print("homeNext viewdis");
    }
}
