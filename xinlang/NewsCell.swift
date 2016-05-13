//
//  NewsCell.swift
//  xinlang
//
//  Created by mac on 16/4/27.
//  Copyright © 2016年 lzc. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
    let titleLabel = UILabel()
    let imageV = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.titleLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 43)
        self.titleLabel.font = UIFont.boldSystemFontOfSize(14)
        self.titleLabel.textAlignment = NSTextAlignment.Center
        self.titleLabel.backgroundColor = UIColor.purpleColor()
        self.contentView.addSubview(self.titleLabel)
    }
    
  class func getID()->String{
        return "cell"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
