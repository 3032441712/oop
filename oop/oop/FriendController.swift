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
        super.viewDidLoad();

        //定义NSURL对象
        let url = NSURL(string: "http://g.hiphotos.baidu.com/image/pic/item/0ff41bd5ad6eddc447d63bbc3edbb6fd52663347.jpg");
        
        //从网络获取数据流
        let data = NSData(contentsOfURL: url!);
        
        //通过数据流初始化图片
        let newImage = UIImage(data: data!, scale: 1.5);

        let image:UIImageView = UIImageView(frame: CGRect(x: self.view.frame.minX, y: self.view.frame.minY, width: self.view.frame.width, height: self.view.frame.height));
        image.tag = 100;
        image.image = newImage;
        image.layer.cornerRadius = 8;
        image.layer.masksToBounds = true;
        image.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(image);
        
        print("friend");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }
}
