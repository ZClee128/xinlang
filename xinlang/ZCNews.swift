//
//  ZCNews.swift
//  xinlang
//
//  Created by mac on 16/4/27.
//  Copyright © 2016年 lzc. All rights reserved.
//

import UIKit

class ZCNews: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.initUI()
    }
    func initUI(){
        let layout = UICollectionViewFlowLayout()
        let collectView = UICollectionView(frame: CGRectMake(0, 20, UIScreen.mainScreen().bounds.size.width-50, 44), collectionViewLayout: layout)
//        设置水平滚动
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        collectView.delegate = self
        collectView.dataSource = self
        collectView.pagingEnabled = true
        collectView.backgroundColor = UIColor.whiteColor()
        collectView.registerClass(NewsCell.classForKeyedUnarchiver(), forCellWithReuseIdentifier: NewsCell.getID())
        self.navigationController?.view.addSubview(collectView)
        
    }
    
//    ========UICollectionViewDelegate,UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(NewsCell.getID(), forIndexPath: indexPath) as! NewsCell
        cell.titleLabel.text = "推荐"
        cell.backgroundColor = UIColor.redColor()
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 50, height: 44)
    }

}
