//
//  FriendTableController.swift
//  oop
//
//  Created by 赵严 on 16/3/21.
//  Copyright © 2016年 赵严. All rights reserved.
//

import UIKit


class FriendTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView?
    
    var items = ["武汉","上海","北京","深圳","广州","重庆","香港","台海","天津"]
    
    var itemsImage = [
        "http://g.hiphotos.baidu.com/image/pic/item/0ff41bd5ad6eddc447d63bbc3edbb6fd52663347.jpg",
        "http://g.hiphotos.baidu.com/image/pic/item/0ff41bd5ad6eddc447d63bbc3edbb6fd52663347.jpg",
        "http://img1.36706.com/lipic/allimg/140925/00535U916-0.jpg",
        "http://www.iyi8.com/uploadfile/2015/0402/20150402123152514.jpg",
        "http://www.iyi8.com/uploadfile/2015/0402/20150402123153844.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView?.estimatedRowHeight = 100
        self.tableView?.rowHeight = UITableViewAutomaticDimension
        self.view.addSubview(self.tableView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        print("numberOfRowsInSection")
        return self.itemsImage.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("cellForRowAtIndexPath")
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath);
        let row:Int = indexPath.row
        
        let url = NSURL(string: self.itemsImage[row])
        let data = NSData(contentsOfURL:url!)
        let newImage:UIImage = UIImage(data:data!, scale:1.5)!

        cell.imageView!.frame = CGRect(x:self.view.frame.minX, y:self.view.frame.minY, width:self.view.frame.width, height:600)
        cell.imageView?.layer.cornerRadius = 8
        cell.imageView?.layer.masksToBounds = true
        cell.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        cell.imageView?.image = newImage
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.preferredMaxLayoutWidth = CGRectGetWidth(self.view.frame.standardized)
        
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didSelectRowAtIndexPath")
        let alert = UIAlertView()
        alert.title = "系统提示"
        
        alert.message = "您选择的图片:\(self.itemsImage[indexPath.row])"
        alert.addButtonWithTitle("确定")
        alert.delegate = self
        alert.show()
    }
}