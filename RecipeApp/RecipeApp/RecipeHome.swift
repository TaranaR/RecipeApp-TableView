//
//  ViewController.swift
//  RecipeApp
//
//  Created by DCS on 04/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myLableHead:UILabel={
        let label=UILabel()
        label.text="Recipe"
        label.textAlignment = .center
        label.font = UIFont(name:"ArialRoundedMTBold", size: 50)
        label.textColor = .white
        return label
    }()
    
    private let myLabelDetail:UILabel={
        let label=UILabel()
        label.text="Cook Like A Chef"
        label.textAlignment = .center
        label.font = UIFont(name:"ArialRoundedMTBold", size: 15)
        label.textColor = .white
        return label
    }()
    
    private let myUname:UITextField={
        let textField=UITextField()
        textField.placeholder = "User Name"
        textField.textAlignment = .center
        textField.layer.cornerRadius = 16.0
        textField.backgroundColor = .white
        return textField
    }()
    
    private let myPassword:UITextField={
        let textField=UITextField()
        textField.placeholder = "Password"
        textField.textAlignment = .center
        textField.layer.cornerRadius = 16.0
        textField.backgroundColor = .white
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("LOGIN", for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        button.tintColor = .white
        button.backgroundColor = .green
        button.layer.cornerRadius = 16
        return button
    }()
    
    @objc private func login(){
        if(myUname.text=="Tarana" && myPassword.text=="Tarana123"){
            let vc = RecipeMenu()
            navigationController?.pushViewController(vc, animated: true)
            self.present(vc, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Alert", message: "Invalid User", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgfood.jpg")!)
        assignbackground()
        view.addSubview(myLableHead)
        view.addSubview(myLabelDetail)
        view.addSubview(myUname)
        view.addSubview(myPassword)
        view.addSubview(loginButton)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLableHead.frame=CGRect(x: 15, y: 150, width: view.frame.size.width-40, height: 60)
        myLabelDetail.frame=CGRect(x: 15, y: 210, width: view.frame.size.width-40, height: 30)
        myUname.frame = CGRect(x: 10, y: 280, width: view.frame.size.width-20, height: 40)
        myPassword.frame=CGRect(x: 10, y: 340, width: view.frame.size.width-20, height: 40)
        loginButton.frame=CGRect(x: 50, y: 400, width: view.frame.size.width-100, height: 40)
    }
    func assignbackground(){
        let background = UIImage(named: "bgfood")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
}

