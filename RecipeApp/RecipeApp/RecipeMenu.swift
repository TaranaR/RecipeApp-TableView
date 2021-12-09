//
//  RecipeMenu.swift
//  RecipeApp
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RecipeMenu: UIViewController {
    
    private let myTableView=UITableView();
    private var foodArray=["American Burger","Healthy BreakFast" ,"4 cheese pizza","American Burger","Healthy BreakFast" ,"4 cheese pizza"];
    private var detailArray=["Lorem Ipsum is simply dummy text of the printing and typesetting industry. a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","Lorem Ipsum is simply dummy text of the printing and typesetting indust also the leap into electronic typesetting, remaining essentially unchanged.","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dufive centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","Lorem Ipsum is simply dummy text of the printing and typesetting industry. a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","Lorem Ipsum is simply dummy text of the printing and typesetting indust also the leap into electronic typesetting, remaining essentially unchanged.","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dufive centuries, but also the leap into electronic typesetting, remaining essentially unchanged."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTableView)
        setupTableView()
        title = "My Recipe"
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTableView.frame=CGRect(x: 0,
                                 y:view.safeAreaInsets.top,
                                 width: view.frame.size.width,
                                 height: view.frame.size.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
    }
}
extension RecipeMenu: UITableViewDataSource,UITableViewDelegate{
    private func setupTableView(){
        myTableView.dataSource=self
        myTableView.delegate=self
        myTableView.register(foodCell.self, forCellReuseIdentifier: "foodCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int)->Int{
        return foodArray.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell=tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! foodCell
        cell.setupFoodCellWith(title: foodArray[indexPath.row],title1: detailArray[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodtitle:String = foodArray[indexPath.row]
        let fooddetail:String = detailArray[indexPath.row]
        changePage(title: foodtitle, detail: fooddetail)
    }
    
    @objc private func changePage(title: String, detail: String){
        let vc = FoodDetailPage(fname:title, fdetail:detail)
        navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true, completion: nil)
    }
}
