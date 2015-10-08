//
//  bbsController.swift
//  oop
//
//  Created by 赵严 on 15/10/6.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class BBSController: UIViewController {
    
    // Mark property
    @IBOutlet weak var bbsInfo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        print("BBSController");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        print("bbsController viewWill");
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated);
        print("bbsController viewwillDis");
        self.hidesBottomBarWhenPushed = false;
    }
    
    // Mark Action
    @IBAction func bbsInfoAct(sender: AnyObject) {
        self.bbsInfo.setTitle("社区页面", forState: UIControlState.Normal);
        self.hidesBottomBarWhenPushed = true;
    }
}
