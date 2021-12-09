//
//  FoodDetailPage.swift
//  RecipeApp
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class FoodDetailPage: UIViewController {
    
    var fname1:String?
    var fdetail1:String?
    
    init(fname:String, fdetail:String){
        super.init(nibName: nil, bundle: nil)
        fname1 = fname
        fdetail1 = fdetail
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let myImageView:UIImageView={
        let imageView=UIImageView();
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds=true
        return imageView
    }()
    
    private let MyTitle:UILabel={
        let label = UILabel()
        label.font = .boldSystemFont(ofSize:22)
        return label
    }()
    private let myDetail:UILabel={
        let label = UILabel()
        label.font = .boldSystemFont(ofSize:18)
        label.numberOfLines = 7
        label.textAlignment = .left
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = fname1
        view.backgroundColor = .white
        view.addSubview(myImageView)
       myImageView.image=UIImage(named: fname1!)
        view.addSubview(MyTitle)
        view.addSubview(myDetail)
        MyTitle.text = fname1
        myDetail.text = fdetail1
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myImageView.frame = CGRect(x: 20, y: 70, width: view.width-40, height: 300)
        MyTitle.frame = CGRect(x: 30, y: myImageView.bottom, width: view.width-40, height: 100)
        myDetail.frame = CGRect(x: 30, y: MyTitle.bottom, width: view.width-40, height: 150)
    }
    
}
