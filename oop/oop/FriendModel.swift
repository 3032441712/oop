//
//  FriendModel.swift
//  oop
//
//  Created by 赵严 on 16/3/20.
//  Copyright © 2016年 赵严. All rights reserved.
//

import UIKit

class FriendModel: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView?
    
    var items = ["武汉","上海","北京","深圳","广州","重庆","香港","台海","天津"]
    
    var leftBtn:UIButton?
    
    var rightButtonItem:UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        setupRightBarButtonItem()
        setupLeftBarButtonItem()
        self.leftBtn!.userInteractionEnabled = true
        
    }
    
    func initView() {
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView!)
    }
    
    func setupLeftBarButtonItem() {
        self.leftBtn = UIButton(type: UIButtonType.Custom)
        self.leftBtn!.frame = CGRectMake(0,0,50,40)
        self.leftBtn?.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        self.leftBtn?.setTitle("编辑", forState:UIControlState.Normal)
        self.leftBtn!.tag = 101
        self.leftBtn!.userInteractionEnabled = false
        self.leftBtn?.addTarget(self, action: "leftBarButtonItemClicked", forControlEvents:UIControlEvents.TouchUpInside)
        let barButtonItem = UIBarButtonItem(customView: self.leftBtn!)
        self.navigationItem.leftBarButtonItem = barButtonItem
        
    }
    
    func leftBarButtonItemClicked() {
        if (self.leftBtn!.tag == 101) {
            self.tableView?.setEditing(true, animated:true)
            self.leftBtn!.tag = 201
            self.leftBtn?.setTitle("完成", forState: UIControlState.Normal)
            self.rightButtonItem!.enabled = false
        } else {
            self.rightButtonItem!.enabled = true
            self.tableView?.setEditing(false, animated: true)
            self.leftBtn!.tag = 101
            self.leftBtn?.setTitle("编辑", forState: UIControlState.Normal)
        }
    }
    
    func setupRightBarButtonItem() {
        self.rightButtonItem = UIBarButtonItem(title: "添加", style: UIBarButtonItemStyle.Plain, target: self, action: "rightBarButtonItemClicked")
        self.navigationItem.rightBarButtonItem = self.rightButtonItem
    }
    
    func rightBarButtonItemClicked() {
        let row = self.items.count
        let indexPath = NSIndexPath(forRow:row, inSection:0)
        self.items.append("杭州")
        self.tableView?.insertRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        print("numberOfRowsInSection")
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("cellForRowAtIndexPath")
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath);
        let row:Int = indexPath.row
        cell.textLabel!.text = self.items[row]
        
        return cell;
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath:NSIndexPath) {
        print("commitEditingStyle")
        let index:Int = indexPath.row
        self.items.removeAtIndex(index)
        self.tableView?.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Top)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didSelectRowAtIndexPath")
        let alert = UIAlertView()
        alert.title = "系统提示"
        
        alert.message = "您选择的城市:\(self.items[indexPath.row])"
        alert.addButtonWithTitle("确定")
        alert.delegate = self
        alert.show()
    }
}
