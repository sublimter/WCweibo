//
//  DiscoveryTableViewController.swift
//  WCweibo
//
//  Created by 万晨 on 15/10/8.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit

class DiscoveryTableViewController: baseTableViewController {
    override func viewDidLoad() {
        visit?.setpart(false, image: "visitordiscover_image_profile", tex: "登录后，你的微博、相册、个人资料会显示在这里，展示给别人")
    }
}
