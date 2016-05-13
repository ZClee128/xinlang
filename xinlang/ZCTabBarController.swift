//
//  ZCTabBarController.swift
//  xinlang
//
//  Created by mac on 16/4/27.
//  Copyright © 2016年 lzc. All rights reserved.
//

import UIKit

class ZCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }

    private func initUI(){
        var arrM = Array<UIViewController>()
        let arr = NSArray(contentsOfFile: NSBundle.mainBundle().pathForResource("tabbar", ofType: "plist")!)
        for dict in arr! {
            
            let namespace = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as! String
            let cls = NSClassFromString(namespace + "." + (dict["clsName"] as! String)) as! UIViewController.Type
            let vc = cls.init()
            let Nav = UINavigationController(rootViewController: vc)
            Nav.tabBarItem.image = self.setRenderMode(UIImage(named: dict["image"] as! String)!)
//            Nav.tabBarController?.tabBar.tintColor = UIColor(red: 243/255.0, green: 75/255.0, blue: 80/255.0, alpha: 1)
            Nav.tabBarItem.title = (dict["title"] as! String)
            Nav.tabBarItem.selectedImage = self.setRenderMode(UIImage(named: dict["selectImage"] as! String)!)
            arrM.append(Nav)
        }
        self.viewControllers = arrM
        
        
    }
    private func setRenderMode(image:UIImage)->UIImage{
        return image.imageWithRenderingMode(.AlwaysOriginal)
    }

}
