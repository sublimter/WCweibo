//
//  MessageTableViewController.swift
//  WCweibo
//
//  Created by 万晨 on 15/10/8.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit

class MessageTableViewController: baseTableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visit?.setpart(false, image: "visitordiscover_image_message", tex: "登录后，别人评论你的微博，发给你的消息，都会在这里收到通知")
    }
    
    
    
}
