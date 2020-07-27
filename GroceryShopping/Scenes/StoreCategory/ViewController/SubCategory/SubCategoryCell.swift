//
//  SubCategoryCell.swift
//  GroceryShopping
//
//  Created by Mohamed M3aty on 7/23/20.
//  Copyright © 2020 MohamedM3aty. All rights reserved.
//

import UIKit

class SubCategoryCell: UITableViewCell {
    // MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setupUI()
    }
    
    // MARK: - Properties
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue", size: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}

extension SubCategoryCell {
    private func setupUI() {
          self.contentView.addSubview(titleLabel)
          
          NSLayoutConstraint.activate([
              titleLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
              titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
          
      }
}
