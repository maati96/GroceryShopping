//
//  SubCategoryVC.swift
//  GroceryShopping
//
//  Created by Mohamed M3aty on 7/23/20.
//  Copyright © 2020 MohamedM3aty. All rights reserved.
//

import UIKit

class SubCategoryVC: UIViewController {
    
   
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SubCategoryCell.self, forCellReuseIdentifier: "SubCategoryCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sub Category"
        setupUI()
    }

}


extension SubCategoryVC {
    private func setupUI() {
           if #available(iOS 13.0, *) {
               overrideUserInterfaceStyle = .light
           }
           self.view.backgroundColor = .white
           
           self.view.addSubview(tableView)
           
           NSLayoutConstraint.activate([
               tableView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
               tableView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
           ])
       }
}


extension SubCategoryVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoryCell", for: indexPath) as! SubCategoryCell
        cell.titleLabel.text = "Liquor"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
    
}
