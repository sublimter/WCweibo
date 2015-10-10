//
//  baseTableViewController.swift
//  WCweibo
//
//  Created by 万晨 on 15/10/8.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit


class baseTableViewController: UITableViewController {
    var flag = false
    var visit:visitView?
    override func loadView() {
        flag ? super.loadView() : setView()
        
        
        
    }
    func setView(){
        print("haha")
        visit = visitView()
        // 设置view的颜色跟图片的深色一致
        view = visit
        
    }
}
