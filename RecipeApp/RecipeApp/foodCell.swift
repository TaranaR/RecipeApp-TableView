//
//  foodCell.swift
//  RecipeApp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class foodCell: UITableViewCell {
    private let myImageView:UIImageView={
        let imageView=UIImageView();
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds=true
        return imageView
    }()
    
    private let myLable:UILabel={
        let label = UILabel()
        label.font = .boldSystemFont(ofSize:22)
        return label
    }()
    private let myLable1:UILabel={
        let label = UILabel()
        label.font = .boldSystemFont(ofSize:10)
        label.textAlignment = .left
        label.numberOfLines = 7
        return label
    }()
    
    func setupFoodCellWith(title name: String, title1 name1: String){
        contentView.addSubview(myImageView)
        contentView.addSubview(myLable)
        contentView.addSubview(myLable1)
        
        myImageView.frame=CGRect(x: 20, y: 25, width: 150, height: 150)
        myLable.frame=CGRect(x: myImageView.right+10 , y: 20, width: 200, height:40)
        myLable1.frame = CGRect(x: myImageView.right+10, y: myLable.bottom+20, width: 150, height: 80)
        
        myImageView.image=UIImage(named: name)
        myLable.text=name
        myLable1.text=name1
    }
}
