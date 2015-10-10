//
//  MainTabBarController.swift
//  WCweibo
//
//  Created by 万晨 on 15/10/8.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit
class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        addChildViews()
        tabBar.tintColor = UIColor.orangeColor()
        
    }
    
    func add(vc:UIViewController,title:String,image:String){
        
        let na = UINavigationController(rootViewController:vc)
        na.title = title
        na.tabBarItem.image = UIImage(named:image)
        addChildViewController(na)
        
    }

    // 重载
    func addChildViews() {
      add(HomeTableViewController(), title: "主页", image: "tabbar_home")
        add(DiscoveryTableViewController(), title: "发现", image: "tabbar_discover")
        addChildViewController(UIViewController())
        add(MessageTableViewController(), title: "消息", image: "tabbar_message_center")
        add(MyfileTableViewController(), title: "我的", image: "tabbar_profile")

        
}
//    let button = UIButton(type:UIButtonType.ContactAdd)
    // var 懒加载
    lazy var button:UIButton = {
        let but = UIButton()
        but.setBackgroundImage(UIImage(named:"tabbar_compose_button"), forState:UIControlState.Normal)
        but.setImage(UIImage(named:"tabbar_compose_icon_add"), forState: UIControlState.Normal)
        but.addTarget(self, action: "click", forControlEvents: UIControlEvents.TouchDown)
      self.tabBar.addSubview(but)
        

        
        
        
        return but
    
    }()
    // 点击事件
    func click(){

      let alert =  UIAlertController(title: "hah", message: "呵呵呵呵呵", preferredStyle:UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    
    
    
    }
    // 位置,布局
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let wid = tabBar.frame.width/CGFloat(childViewControllers.count)
        button.frame = CGRect(x: 2*wid, y: 0, width: wid, height: tabBar.frame.height)
        
    
    }
    
    
    
    
    
    
    
    
    
    
   }
