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
    override func loadView() {
        flag ? super.loadView() : setView()
        
        
        
    }
    func setView(){
        print("haha")
        view = visitView()
        
        
    }
}
