//
//  CotainerViewCell.swift
//  GroceryShopping
//
//  Created by Mohamed M3aty on 7/14/20.
//  Copyright © 2020 MohamedM3aty. All rights reserved.
//

import UIKit

class CotainerViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImage: UIImageView! {
        didSet {
            categoryImage.clipsToBounds = true
            categoryImage.backgroundColor = UIColor(red: 0.75, green: 0.95, blue: 0.79, alpha: 1)
            categoryImage.alpha = 0.3
            categoryImage.layer.cornerRadius = categoryImage.frame.size.height/2
            
        }
    }
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    class var customCell : StoreCollectionCell {
              let cell = Bundle.main.loadNibNamed("CotainerViewCell", owner: self, options: nil)?.last
              return cell as! StoreCollectionCell
          }
       
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

}
