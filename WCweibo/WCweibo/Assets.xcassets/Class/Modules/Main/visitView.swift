//
//  visitView.swift
//  WCweibo
//
//  Created by 万晨 on 15/10/9.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit
// 纯代码开发使用
class visitView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
        
        
    }
// 禁止xib,sb调用本类
    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder:aDecoder)
        setView()
    }
    
    //设置转动
    func setAnimation(){
        
        let ani = CABasicAnimation(keyPath: "transform.rotation")
        ani.toValue = 2 * M_PI
        ani.repeatCount = MAXFLOAT
        ani.duration = 10
        ani.removedOnCompletion = false
        iconView.layer.addAnimation(ani, forKey: nil)
    }
    
    func hah(){
    
    
    }
     func setpart(ishome:Bool,image:String,tex:String){
        
        
//        let finished:()->()={
//           self.icon2View.image = UIImage(named: image)
//           self.textLable.text = tex
//           self.iconView.hidden = true
//            
//        }
        
        ishome ? setAnimation() : {
            self.icon2View.image = UIImage(named: image)
            self.textLable.text = tex
            self.iconView.hidden = true
            
        }()


    
    
    
    }
    
    
    
    func setView(){
       addSubview(iconView)
       addSubview(icon3View)
       addSubview(icon2View)
       addSubview(textLable)
       addSubview(loginbut)
       addSubview(registerBut)
        
    // MARK: -自动布局 
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: iconView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: iconView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute:
            NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0))
        
        icon3View.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: icon3View, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: icon3View, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute:
            NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0))
        
        icon2View.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: icon2View, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: iconView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: icon2View, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: iconView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0))
        
        
        textLable.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: textLable, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: iconView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: textLable, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: iconView, attribute:
            NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 16))
        addConstraint(NSLayoutConstraint(item: textLable, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant:200))
        
        
        loginbut.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: loginbut, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: textLable, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: loginbut, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: textLable, attribute:
            NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 16))
        addConstraint(NSLayoutConstraint(item: loginbut, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant:50 ))
        addConstraint(NSLayoutConstraint(item:loginbut , attribute: NSLayoutAttribute.Height , relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 30))
        
        
        
        registerBut.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(NSLayoutConstraint(item: registerBut, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: textLable, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: registerBut, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: textLable, attribute:
            NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 16))
        addConstraint(NSLayoutConstraint(item: registerBut, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant:50 ))
        addConstraint(NSLayoutConstraint(item:registerBut , attribute: NSLayoutAttribute.Height , relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 30))
        // 背景颜色跟遮罩视图一致
        backgroundColor = UIColor(white: 237/255.0, alpha: 1.0)

        
        
        
    }

//MARK: -懒加载控件
  private  lazy var iconView:UIImageView = {
    let v = UIImageView(image:UIImage(named: "visitordiscover_feed_image_smallicon"))
    
    return v
    }()
   

  private  lazy var icon2View:UIImageView = {
    let v2 = UIImageView(image:UIImage(named: "visitordiscover_feed_image_house"))
    return v2
    }()
  private lazy var icon3View:UIImageView = {
    
    let v3 = UIImageView(image:UIImage(named: "visitordiscover_feed_mask_smallicon"))
    
    return v3
    }()
    
  private lazy var textLable:UILabel = {
    let label = UILabel()
    label.text = "关注一些人，回这里看看有什么惊喜"
    label.textColor = UIColor.darkGrayColor()
    label.font = UIFont.systemFontOfSize(14)
    label.numberOfLines = 0
//    label.sizeToFit()
    return label
    }()
    
    
    private lazy var loginbut:UIButton = {
    let but = UIButton()
    but.setTitle("登陆", forState: UIControlState.Normal)
    but.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
    but.setBackgroundImage(UIImage(named:"common_button_white_disable"), forState: UIControlState.Normal)
    return but
    
    }()
    
    
    private lazy var registerBut:UIButton = {
    let but = UIButton()
    but.setTitle("注册", forState: UIControlState.Normal)
    but.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)

    but.setBackgroundImage(UIImage(named:"common_button_white_disable"), forState: UIControlState.Normal)
    return but
    }()
}
