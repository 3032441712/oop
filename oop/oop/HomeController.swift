//
//  ViewController.swift
//  oop
//
//  Created by 赵严 on 15/10/5.
//  Copyright © 2015年 赵严. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var homeNextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("home");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        print("home viewwill");
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated);
        self.hidesBottomBarWhenPushed = false;
    }
    
    // MARK: Actions
    @IBAction func homeNextBtnAct(sender: UIButton) {
        print("next btn");
        self.homeNextBtn.setTitle("已提交", forState: UIControlState.Normal);
        self.hidesBottomBarWhenPushed = true;
    }
}

